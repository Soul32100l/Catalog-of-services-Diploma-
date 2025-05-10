use serde::{Deserialize, Serialize};
use warp::Filter;
use uuid::Uuid;
use std::collections::HashSet;
use std::sync::{Arc, Mutex};

use crate::db;

#[derive(Deserialize)]
pub struct AddUserRequest {
    pub username: String,
    pub last_name: String,
    pub first_name: String,
    pub middle_name: Option<String>,
    pub phone: String,
    pub email: String,
    pub password: String,
}

#[derive(Deserialize)]
pub struct EditCatalogRequest {
    pub id: i32,
    pub available_dates: Option<String>,
    pub occupied_dates: Option<String>,
}

#[derive(Serialize)]
pub struct ApiResponse {
    pub success: bool,
    pub message: String,
}

#[derive(Serialize)]
pub struct LoginResponse {
    pub success: bool,
    pub message: String,
    pub token: Option<String>,
}

#[derive(Deserialize)]
pub struct LoginRequest {
    pub username: String,
    pub password: String,
}

#[derive(Deserialize)]
pub struct TokenCheckRequest {
    pub token: String,
}

#[derive(Deserialize)]
pub struct LogoutRequest {
    pub token: String,
}

pub async fn start_api_server() {
	// Хранилище невалидных токенов (in-memory)
	let invalid_tokens: Arc<Mutex<HashSet<String>>> = Arc::new(Mutex::new(HashSet::new()));

	let cors = warp::cors()
		.allow_any_origin()
		.allow_methods(vec!["GET", "POST", "PUT", "DELETE", "OPTIONS"])
		.allow_headers(vec!["content-type", "authorization"]);

	// Маршрут для добавления пользователя
	let add_user = warp::post()
		.and(warp::path("add_user"))
		.and(warp::body::json())
		.map(|user: AddUserRequest| {
			match db::add_user(
				&user.username,
				&user.last_name,
				&user.first_name,
				user.middle_name.as_deref(),
				&user.phone,
				"guest", // Роль по умолчанию
				&user.email,
				&user.password,
			) {
				Ok(_) => warp::reply::json(&ApiResponse {
					success: true,
					message: "Пользователь успешно добавлен".to_string(),
				}),
				Err(e) => warp::reply::json(&ApiResponse {
					success: false,
					message: format!("Ошибка: {}", e),
				}),
			}
		});

	// Маршрут для получения всех пользователей
	let get_users = warp::get()
		.and(warp::path("users"))
		.map(|| {
			match db::get_users() {
				Ok(users) => warp::reply::json(&users),
				Err(e) => warp::reply::json(&ApiResponse {
					success: false,
					message: format!("Ошибка: {}", e),
				}),
			}
		});

	// Маршрут для получения всех мед. учреждений
	let get_medical_institutions = warp::get()
		.and(warp::path("medical_institutions"))
		.map(|| {
			match db::get_medical_institutions() {
				Ok(institutions) => warp::reply::json(&institutions),
				Err(e) => warp::reply::json(&ApiResponse {
					success: false,
					message: format!("Ошибка: {}", e),
				}),
			}
		});

	// Маршрут для получения всех услуг
	let get_catalog = warp::get()
		.and(warp::path!("catalog" / i32)) // Ожидаем путь вида catalog/<id>
		.map(|institution_id: i32| {
			match db::get_catalog_by_institution_id(institution_id) {
				Ok(catalog) => warp::reply::json(&catalog),
				Err(e) => warp::reply::json(&ApiResponse {
					success: false,
					message: format!("Ошибка: {}", e),
				}),
			}
		});

	let get_service_by_id = warp::get()
		.and(warp::path!("service" / i32))
		.map(|service_id: i32| {
			match db::get_service_by_id(service_id) {
				Ok(service) => warp::reply::json(&service),
				Err(e) => warp::reply::json(&ApiResponse {
					success: false,
					message: format!("Ошибка: {}", e),
				}),
			}
		});

	// Маршрут для получения всех документов
	let get_documents = warp::get()
		.and(warp::path("documents"))
		.map(|| {
			match db::get_documents() {
				Ok(documents) => warp::reply::json(&documents),
				Err(e) => warp::reply::json(&ApiResponse {
					success: false,
					message: format!("Ошибка: {}", e),
				}),
			}
		});

	// Маршрут для проверки статуса базы данных
	let db_status = warp::get()
		.and(warp::path("db_status"))
		.map(|| {
			match db::connect_to_db() {
				Ok(_) => warp::reply::json(&ApiResponse {
					success: true,
					message: "Подключение к базе данных успешно".to_string(),
				}),
				Err(e) => warp::reply::json(&ApiResponse {
					success: false,
					message: format!("Ошибка подключения к БД: {}", e),
				}),
			}
		});

	// Маршрут для проверки статуса API
	let status_route = warp::get()
		.and(warp::path("status"))
		.map(|| warp::reply::json(&ApiResponse {
			success: true,
			message: "API работает".to_string(),
		}));

	// Маршрут для редактирования записи в каталоге
	let edit_catalog_item = warp::put()
		.and(warp::path("edit_catalog"))
		.and(warp::path::end())
		.and(warp::body::json())
		.map(|req: EditCatalogRequest| {
			match db::edit_catalog_item(
				req.id,
				None, // Не изменяем name
				None, // Не изменяем description
				None, // Не изменяем image_url
				req.available_dates.as_deref(),
				req.occupied_dates.as_deref(),
			) {
				Ok(_) => warp::reply::json(&ApiResponse {
					success: true,
					message: "Запись в каталоге успешно обновлена".to_string(),
				}),
				Err(e) => warp::reply::json(&ApiResponse {
					success: false,
					message: format!("Ошибка: {}", e),
				}),
			}
		});


	// проверка авторизации пользователя
	let login_user = warp::post()
		.and(warp::path("login"))
		.and(warp::body::json())
		.map(|req: LoginRequest| {
			match db::authenticate_user(&req.username, &req.password) {
				Ok(true) => {
					let token = Uuid::new_v4().to_string();
					warp::reply::json(&LoginResponse {
						success: true,
						message: "Успешный вход".to_string(),
						token: Some(token),
					})
				},
				Ok(false) => warp::reply::json(&LoginResponse {
					success: false,
					message: "Неверное имя пользователя или пароль".to_string(),
					token: None,
				}),
				Err(e) => warp::reply::json(&LoginResponse {
					success: false,
					message: format!("Ошибка: {}", e),
					token: None,
				}),
			}
		});

	// Новый маршрут для проверки токена
	let invalid_tokens_check = invalid_tokens.clone();
	let check_token = warp::post()
		.and(warp::path("check_token"))
		.and(warp::body::json())
		.map(move |req: TokenCheckRequest| {
			let is_valid_uuid = Uuid::parse_str(&req.token).is_ok();
			let is_invalidated = invalid_tokens_check.lock().unwrap().contains(&req.token);
			let is_valid = is_valid_uuid && !is_invalidated;
			warp::reply::json(&ApiResponse {
				success: is_valid,
				message: if is_valid {
					"Токен валиден".to_string()
				} else {
					"Токен невалиден".to_string()
				},
			})
		});

	// Новый маршрут для выхода (logout)
	let invalid_tokens_logout = invalid_tokens.clone();
	let logout = warp::post()
		.and(warp::path("logout"))
		.and(warp::body::json())
		.map(move |req: LogoutRequest| {
			let mut set = invalid_tokens_logout.lock().unwrap();
			set.insert(req.token.clone());
			warp::reply::json(&ApiResponse {
				success: true,
				message: "Выход выполнен, токен более не действует".to_string(),
			})
		});

	// Маршрут для обработки CORS OPTIONS
	let options_route = warp::options()
		.map(|| warp::reply())
		.with(cors.clone());

	// Объединяем маршруты
	let routes = add_user
		.or(get_users)
		.or(get_medical_institutions)
		.or(get_catalog)
		.or(get_documents)
		.or(db_status)
		.or(status_route)
		.or(edit_catalog_item)
		.or(get_service_by_id)
		.or(options_route)
		.or(login_user)
		.or(check_token)
		.or(logout) // Добавлен маршрут logout
		.with(cors.clone())
		.recover(|err: warp::Rejection| async move {
        	// Возвращаем CORS даже при ошибках
       		let reply = warp::reply::json(&ApiResponse {
            	success: false,
            	message: format!("Ошибка запроса: {:?}", err),
        	});
        	Ok::<_, std::convert::Infallible>(warp::reply::with_header(
            	reply,
        		"Access-Control-Allow-Origin",
        		"*",
        	))
    	});

	// Запускаем сервер
	println!("Запуск API-сервера на http://127.0.0.1:3030");
	warp::serve(routes).run(([127, 0, 0, 1], 3030)).await;
}
