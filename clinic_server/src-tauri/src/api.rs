use serde::{Deserialize, Serialize};
use warp::Filter;
use warp::http::Method;

use crate::db;

#[derive(Deserialize)]
pub struct AddUserRequest {
    pub username: String,
    pub last_name: String,
    pub first_name: String,
    pub middle_name: Option<String>,
    pub phone: String,
    pub status: String,
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



// ...existing code...

pub async fn start_api_server() {
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
							&user.status,
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
        .and(warp::body::json())
        .map(|req: EditCatalogRequest| {
            match db::edit_catalog_item(
                req.id,
                "", // Не изменяем name
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

	let cors = warp::cors()
			.allow_any_origin()
			.allow_methods(&[Method::GET, Method::POST, Method::PUT, Method::DELETE])
			.allow_headers(vec!["Content-Type"]);

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
			.with(cors);

	// Запускаем сервер
	println!("Запуск API-сервера на http://127.0.0.1:3030");
	warp::serve(routes).run(([127, 0, 0, 1], 3030)).await;
}
