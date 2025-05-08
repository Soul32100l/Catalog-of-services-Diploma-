mod db;
mod api;
use tokio::runtime::Runtime;
use std::fs;
use std::path::PathBuf;
use serde::{Deserialize, Serialize};
use tauri::AppHandle;
use tauri::Manager;



fn main() {
    // Создаём асинхронный рантайм вручную
    let runtime = Runtime::new().expect("Не удалось создать Tokio Runtime");

    // Запускаем API-сервер в отдельной асинхронной задаче
    runtime.spawn(async {
        api::start_api_server().await;
    });

    // Запускаем приложение Tauri
    tauri::Builder::default()
        .setup(|_app| {

            println!("Приложение Tauri успешно запущено");
            Ok(())
        })
        .invoke_handler(tauri::generate_handler![
            get_db_status,
            register_user,
						login,
						get_medical_institutions,
						add_medical_institution,
						edit_medical_institution,
						delete_medical_institution,
						get_institution_by_id,
        		get_catalog_by_institution_id,
						get_catalog_item_details,
						edit_catalog_item,
						delete_catalog_item,
						add_catalog_item,
						get_users,
						delete_user,
						get_user_details,
        		edit_user,
						read_config,
        		write_config,
        		login,
						get_documents,
						add_document,
						edit_document,
						delete_document,
						toggle_devtools
        ])
        .run(tauri::generate_context!())
        .expect("Ошибка запуска приложения");
}

#[tauri::command]
fn get_db_status() -> String {
    match db::connect_to_db() {
        Ok(_) => {
            println!("✅ Успешное подключение к базе данных");
            "success".to_string()
        }
        Err(e) => {
            eprintln!("❌ Ошибка подключения к БД: {}", e);
            format!("error: {}", e)
        }
    }
}




#[derive(Serialize, Deserialize, Debug)]
struct Config {
    username: Option<String>,
    password: Option<String>,
    devtools: Option<bool>,
}


fn get_config_path(app: &AppHandle) -> PathBuf {
    let path = app
        .path()
        .config_dir()
        .expect("Не удалось получить config_dir");
    
    path.join("med-uslugi").join("config.js")
}


#[tauri::command]
fn read_config(app: AppHandle) -> Result<Config, String> {
    let path = get_config_path(&app);
    if path.exists() {
        let content = fs::read_to_string(path).map_err(|e| e.to_string())?;
        serde_json::from_str(&content).map_err(|e| e.to_string())
    } else {
        Ok(Config {
            username: None,
            password: None,
            devtools: Some(false),
        })
    }
}


#[tauri::command]
fn write_config(config: Config, app: AppHandle) -> Result<(), String> {
    let path = get_config_path(&app);

    // Создаём директорию, если она отсутствует
    if let Some(parent) = path.parent() {
        if !parent.exists() {
						println!("Создаём директорию");
            fs::create_dir_all(parent).map_err(|e| e.to_string())?;
						println!("Директория создана");
        }
    }

    // Создаём файл, если он отсутствует
    if !path.exists() {
				println!("Создаём файл");
        fs::File::create(&path).map_err(|e| e.to_string())?;
				println!("Файл создан");
    }
		println!("Запись в файл: {:?}", path);
    println!("Данные для записи: {:?}", config);
    // Записываем данные в файл
    let content = serde_json::to_string_pretty(&config).map_err(|e| e.to_string())?;
    fs::write(&path, content).map_err(|e| e.to_string())?;
		println!("Данные записаны в файл: {:?}", path);
		println!("Данные записаны: {:?}", config);
		Ok(())
}

//Включение/отключение консоли разработчика
#[tauri::command]
fn toggle_devtools(enable: bool, app: AppHandle) -> Result<(), String> {
    let config_path = get_config_path(&app);
    let mut config: Config = serde_json::from_str(&std::fs::read_to_string(&config_path).map_err(|e| e.to_string())?)
        .map_err(|e| e.to_string())?;

    config.devtools = Some(enable);

    let config_json = serde_json::to_string_pretty(&config).map_err(|e| e.to_string())?;
    std::fs::write(config_path, config_json).map_err(|e| e.to_string())?;

    Ok(())
}









#[tauri::command]
fn register_user(
    username: String,
    last_name: String,
    first_name: String,
    middle_name: Option<String>,
    phone: String,
    email: String,
    status: String,
    password: String,
) -> Result<bool, String> {
    match db::add_user(
        &username,
        &last_name,
        &first_name,
        middle_name.as_deref(),
        &phone,
        &status,
        &email,
        &password,
    ) {
        Ok(_) => Ok(true),
        Err(e) => {
            eprintln!("Ошибка при регистрации пользователя: {}", e);
            Err(e.to_string())
        }
    }
}

#[tauri::command]
fn login(username: String, password: String) -> Result<bool, String> {
    match db::authenticate_user(&username, &password) {
        Ok(is_valid) => {
            if is_valid {
                println!("✅ Пользователь {} успешно вошёл в систему", username);
                Ok(true)
            } else {
                println!("❌ Неверные данные для пользователя {}", username);
                Ok(false)
            }
        }
        Err(e) => {
            eprintln!("Ошибка при проверке пользователя: {}", e);
            Err(e.to_string())
        }
    }
}

#[tauri::command]
fn get_medical_institutions() -> Result<Vec<(i32, String, String, String, String)>, String> {
		match db::get_medical_institutions() {
				Ok(institutions) => Ok(institutions),
				Err(e) => {
						eprintln!("Ошибка при получении медицинских учреждений: {}", e);
						Err(e.to_string())
				}
		}
}

#[tauri::command]
fn add_medical_institution(
		name: String,
		address: String,
		contact_info: String,
		website: String,
) -> Result<bool, String> {
		match db::add_medical_institution(&name, &address, &contact_info, &website) {
				Ok(_) => Ok(true),
				Err(e) => {
						eprintln!("Ошибка при добавлении медицинского учреждения: {}", e);
						Err(e.to_string())
				}
		}
}

#[tauri::command]
fn edit_medical_institution(
		id: i32,
		name: String,
		address: String,
		contact_info: String,
		website: String,
) -> Result<bool, String> {
		match db::edit_medical_institution(id, &name, &address, &contact_info, &website) {
				Ok(_) => Ok(true),
				Err(e) => {
						eprintln!("Ошибка при редактировании медицинского учреждения: {}", e);
						Err(e.to_string())
				}
		}
}

#[tauri::command]
fn delete_medical_institution(id: i32) -> Result<bool, String> {
    match db::delete_medical_institution(id) {
        Ok(_) => Ok(true),
        Err(e) => {
            eprintln!("Ошибка при удалении медицинского учреждения: {}", e);
            Err(e.to_string())
        }
    }
}



#[derive(Serialize)]
struct Institution {
    id: i32,
    name: String,
    address: String,
}

#[tauri::command]
fn get_institution_by_id(id: i32) -> Result<Institution, String> {
    match db::get_institution_by_id(id) {
        Ok((id, name, address)) => Ok(Institution { id, name, address }),
        Err(e) => {
            eprintln!("Ошибка при получении учреждения: {}", e);
            Err(e.to_string())
        }
    }
}

#[tauri::command]
fn get_catalog_by_institution_id(
    institution_id: i32,
) -> Result<Vec<(i32, String, String)>, String> {
    match db::get_catalog_by_institution_id(institution_id) {
        Ok(catalog) => Ok(catalog),
        Err(e) => {
            eprintln!("Ошибка при получении каталога: {}", e);
            Err(e.to_string())
        }
    }
}

#[tauri::command]
fn get_catalog_item_details(id: i32) -> Result<(i32, String, Option<String>, Option<String>, Option<String>, Option<String>, Vec<String>), String> {
    match db::get_catalog_item_details(id) {
        Ok(details) => Ok(details),
        Err(e) => {
            eprintln!("Ошибка при получении деталей услуги: {}", e);
            Err(e.to_string())
        }
    }
}

#[tauri::command]
fn edit_catalog_item(
    id: i32,
    name: String,
    description: Option<String>,
    image_url: Option<String>,
    available_dates: Option<String>,
    occupied_dates: Option<String>,
) -> Result<bool, Option<String>> {
	match db::edit_catalog_item(
			id,
			&name,
			description.as_deref(),
			image_url.as_deref(),
			available_dates.as_deref(),
			occupied_dates.as_deref(),
	) {
			Ok(_) => Ok(true),
			Err(e) => {
					eprintln!("Ошибка при редактировании услуги: {}", e);
					Err(Some(e.to_string()))
			}
	}
}

#[tauri::command]
fn delete_catalog_item(id: i32) -> Result<bool, String> {
    match db::delete_catalog_item(id) {
        Ok(_) => Ok(true),
        Err(e) => {
            eprintln!("Ошибка при удалении элемента каталога: {}", e);
            Err(e.to_string())
        }
    }
}

#[tauri::command]
fn add_catalog_item(
    institution_id: i32,
    name: String,
    description: Option<String>,
    image_url: Option<String>,
    available_dates: Option<String>,
    occupied_dates: Option<String>,
    required_documents: Option<String>,
) -> Result<bool, String> {
		eprintln!("Получен institution_id: {}", institution_id);
		eprintln!("Получено имя: {}", name);
		eprintln!("Получено описание: {:?}", description);
		eprintln!("Получен URL изображения: {:?}", image_url);
		eprintln!("Получены доступные даты: {:?}", available_dates);
		eprintln!("Получены занятые даты: {:?}", occupied_dates);
        eprintln!("Получены обязательные документы: {:?}", required_documents);
		
    match db::add_catalog_item(
        institution_id,
        &name,
        description.as_deref(),
        image_url.as_deref(),
        available_dates.as_deref(),
        occupied_dates.as_deref(),
        required_documents.as_deref(),
    ) {
        Ok(_) => Ok(true),
        Err(e) => {
            eprintln!("Ошибка при добавлении услуги: {}", e);
            Err(e.to_string())
        }
    }
}

#[tauri::command]
fn get_users() -> Result<Vec<(i32, String, String, String, Option<String>, String, String, String)>, String> {
    match db::get_users() {
        Ok(users) => Ok(users),
        Err(e) => {
            eprintln!("Ошибка при получении списка пользователей: {}", e);
            Err(e.to_string())
        }
    }
}

#[tauri::command]
fn delete_user(id: i32) -> Result<bool, String> {
    match db::delete_user(id) {
        Ok(_) => Ok(true),
        Err(e) => {
            eprintln!("Ошибка при удалении пользователя: {}", e);
            Err(e.to_string())
        }
    }
}

#[tauri::command]
fn get_user_details(id: i32) -> Result<(i32, String, String, String, Option<String>, String, String, String), String> {
    match db::get_user_details(id) {
        Ok(user) => Ok(user),
        Err(e) => {
            eprintln!("Ошибка при получении данных пользователя: {}", e);
            Err(e.to_string())
        }
    }
}

#[tauri::command]
fn edit_user(
    id: i32,
    username: String,
    last_name: String,
    first_name: String,
    middle_name: Option<String>,
    phone: String,
    email: String,
    status: String,
) -> Result<bool, String> {
    match db::edit_user(
        id,
        &username,
        &last_name,
        &first_name,
        middle_name.as_deref(),
        &phone,
        &email,
        &status,
    ) {
        Ok(_) => Ok(true),
        Err(e) => {
            eprintln!("Ошибка при редактировании пользователя: {}", e);
            Err(e.to_string())
        }
    }
}

#[tauri::command]
fn get_documents() -> Result<Vec<(i32, String)>, String> {
    db::get_documents().map_err(|e| e.to_string())
}

#[tauri::command]
fn add_document(name: String) -> Result<bool, String> {
    db::add_document(&name).map(|_| true).map_err(|e| e.to_string())
}

#[tauri::command]
fn edit_document(id: i32, name: String) -> Result<bool, String> {
    db::edit_document(id, &name).map(|_| true).map_err(|e| e.to_string())
}

#[tauri::command]
fn delete_document(id: i32) -> Result<bool, String> {
    db::delete_document(id).map(|_| true).map_err(|e| e.to_string())
}
