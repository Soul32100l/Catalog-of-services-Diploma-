use mysql::*;
use mysql::prelude::*;
use bcrypt::{hash, verify}; // Для работы с хэшами паролей
use serde::Serialize;


// подключение к базе данных MySQL
pub fn connect_to_db() -> Result<PooledConn, Box<dyn std::error::Error>> {
    let opts = OptsBuilder::new()
        .ip_or_hostname(Some("MySQL-5.7")) // имя хоста указан в файле настроек phpmyadmin
        .tcp_port(3306)// Порт по умолчанию для MySQL
        .user(Some("root")) // Имя пользователя базы данных
        .pass(Some(""))// Пароль базы данных
        .db_name(Some("medical_services")); // Имя базы данных

    let pool = Pool::new(opts)?;
    let conn = pool.get_conn()?;
    Ok(conn)
}

// Таблица добавления пользователей
pub fn add_user(
	// ds,bh
	username: &str,
	last_name: &str,
	first_name: &str,
	middle_name: Option<&str>,
	phone: &str,
	status: &str,
	email: &str,
	password: &str,
) -> Result<(), Box<dyn std::error::Error>> {
	let mut conn = connect_to_db()?;
	let hashed_password = hash(password, 12)?; // Хэшируем пароль

	conn.exec_drop(
			"INSERT INTO users (username, last_name, first_name, middle_name, phone, status, email, password_hash)
			 VALUES (:username, :last_name, :first_name, :middle_name, :phone, :status, :email, :password_hash)",
			params! {
					"username" => username,
					"last_name" => last_name,
					"first_name" => first_name,
					"middle_name" => middle_name,
					"phone" => phone,
					"status" => status,
					"email" => email,
					"password_hash" => hashed_password, // Сохраняем хэшированный пароль
			},
	)?;
	Ok(())
}

// Автроризация пользователя

pub fn authenticate_user(username: &str, password: &str) -> Result<bool, Box<dyn std::error::Error>> {
	let mut conn = connect_to_db()?;
	let result: Option<String> = conn.exec_first(
			"SELECT password_hash FROM users WHERE username = :username",
			params! {
					"username" => username,
			},
	)?;

	if let Some(stored_hash) = result {
			Ok(verify(password, &stored_hash)?) // Проверяем хэш пароля
	} else {
			Ok(false) // Пользователь не найден
	}
}

// Получение списка мед. учереждений

pub fn get_medical_institutions() -> Result<Vec<(i32, String, String, String, String)>, Box<dyn std::error::Error>> {
	let mut conn = connect_to_db()?;
	let result = conn.query_map(
			"SELECT id, name, address, contact_info, website FROM medical_facility",
			|(id, name, address, contact_info, website)| (id, name, address, contact_info, website),
	)?;
	Ok(result)
}

// Добавление мед. учереждений

pub fn add_medical_institution(
	name: &str,
	address: &str,
	contact_info: &str,
	website: &str,
) -> Result<(), Box<dyn std::error::Error>> {
	let mut conn = connect_to_db()?;
	conn.exec_drop(
			"INSERT INTO medical_facility (name, address, contact_info, website) VALUES (:name, :address, :contact_info, :website)",
			params! {
					"name" => name,
					"address" => address,
					"contact_info" => contact_info,
					"website" => website,
			},
	)?;
	Ok(())
}

// редактирование мед. учереждений

pub fn edit_medical_institution(
	id: i32,
	name: &str,
	address: &str,
	contact_info: &str,
	website: &str,
) -> Result<(), Box<dyn std::error::Error>> {
	let mut conn = connect_to_db()?;
	conn.exec_drop(
			"UPDATE medical_facility SET name = :name, address = :address, contact_info = :contact_info, website = :website WHERE id = :id",
			params! {
					"id" => id,
					"name" => name,
					"address" => address,
					"contact_info" => contact_info,
					"website" => website,
			},
	)?;
	Ok(())
}

// удаление мед. учереждений

pub fn delete_medical_institution(id: i32) -> Result<(), Box<dyn std::error::Error>> {
	let mut conn = connect_to_db()?;
	conn.exec_drop(
			"DELETE FROM medical_facility WHERE id = :id",
			params! {
					"id" => id,
			},
	)?;
	Ok(())
}

// получение мед. учереждений по id (Одного эелемента)

pub fn get_institution_by_id(
	id: i32,
) -> Result<(i32, String, String), Box<dyn std::error::Error>> {
	let mut conn = connect_to_db()?;
	let result = conn.exec_first(
			"SELECT id, name, address FROM medical_facility WHERE id = :id",
			params! { "id" => id },
	)?;
	result.ok_or_else(|| "Учреждение не найдено".into())
}



pub fn get_catalog_by_institution_id(
	institution_id: i32,
) -> Result<Vec<(i32, String, String )>, Box<dyn std::error::Error>> {
	let mut conn = connect_to_db()?;
	let result = conn.exec_map(
			"SELECT id, name, description FROM service_list WHERE institution_id = :institution_id",
			params! { "institution_id" => institution_id },
			|(id, name, description)| {
					(id, name, description)
			},
	)?;
	Ok(result)
}

pub fn get_catalog_item_details(
	id: i32,
) -> Result<(i32, String, Option<String>, Option<String>, Option<String>, Option<String>, Vec<String>), Box<dyn std::error::Error>> {
	let mut conn = connect_to_db()?;

	// Получаем основную информацию об услуге
	let service = conn.exec_first::<(i32, String, Option<String>, Option<String>, Option<String>, Option<String>), _, _>(
			"SELECT id, name, description, image_url, available_dates, occupied_dates FROM service_list WHERE id = :id",
			params! { "id" => id },
	)?.ok_or_else(|| Box::<dyn std::error::Error>::from("Услуга не найдена"))?;

	// Получаем список документов
	let documents = conn.exec_map(
			"SELECT document_name FROM documents WHERE service_id = :id",
			params! { "id" => id },
			|document_name: String| document_name,
	)?;

	Ok((service.0, service.1, service.2, service.3, service.4, service.5, documents))
}

pub fn edit_catalog_item(
	id: i32,
	name: &str,
	description: Option<&str>,
	image_url: Option<&str>,
	available_dates: Option<&str>,
	occupied_dates: Option<&str>,
) -> Result<(), Box<dyn std::error::Error>> {
	let mut conn = connect_to_db()?;
	conn.exec_drop(
			"UPDATE service_list SET name = :name, description = :description, image_url = :image_url, available_dates = :available_dates, occupied_dates = :occupied_dates WHERE id = :id",
			params! {
					"id" => id,
					"name" => name,
					"description" => description,
					"image_url" => image_url,
					"available_dates" => available_dates,
					"occupied_dates" => occupied_dates,
			},
	)?;
	Ok(())
}

pub fn delete_catalog_item(id: i32) -> Result<(), Box<dyn std::error::Error>> {
	let mut conn = connect_to_db()?;
	conn.exec_drop(
			"DELETE FROM service_list WHERE id = :id",
			params! {
					"id" => id,
			},
	)?;
	Ok(())
}

pub fn add_catalog_item(
	institution_id: i32,
	name: &str,
	description: Option<&str>,
	image_url: Option<&str>,
	available_dates: Option<&str>,
	occupied_dates: Option<&str>,
	required_documents: Option<&str>,
) -> Result<(), Box<dyn std::error::Error>> {
	let mut conn = connect_to_db()?;
	conn.exec_drop(
			"INSERT INTO service_list (institution_id, name, description, image_url, available_dates, occupied_dates, required_documents)
			 VALUES (:institution_id, :name, :description, :image_url, :available_dates, :occupied_dates, :required_documents)",
			params! {
					"institution_id" => institution_id,
					"name" => name,
					"description" => description.unwrap_or(""),
					"image_url" => image_url.unwrap_or(""),
					"available_dates" => available_dates.unwrap_or(""),
					"occupied_dates" => occupied_dates.unwrap_or(""),
					"required_documents" => required_documents.unwrap_or(""),
			},
	)?;
	eprintln!("Вставка в БД с параметрами:");
eprintln!("institution_id: {}", institution_id);
eprintln!("name: {}", name);
eprintln!("description: {}", description.unwrap_or(""));
eprintln!("image_url: {}", image_url.unwrap_or(""));
eprintln!("available_dates: {}", available_dates.unwrap_or(""));
eprintln!("occupied_dates: {}", occupied_dates.unwrap_or(""));
eprintln!("required_documents: {}", required_documents.unwrap_or(""));

	Ok(())
}

pub fn get_users() -> Result<Vec<(i32, String, String, String, Option<String>, String, String, String)>, Box<dyn std::error::Error>> {
	let mut conn = connect_to_db()?;
	let result = conn.query_map(
			"SELECT id, username, last_name, first_name, middle_name, phone, email, status FROM users",
			|(id, username, last_name, first_name, middle_name, phone, email, status)| {
					(id, username, last_name, first_name, middle_name, phone, email, status)
			},
	)?;
	Ok(result)
}

pub fn delete_user(id: i32) -> Result<(), Box<dyn std::error::Error>> {
	let mut conn = connect_to_db()?;
	conn.exec_drop("DELETE FROM users WHERE id = :id", params! { "id" => id })?;
	Ok(())
}

pub fn get_user_details(id: i32) -> Result<(i32, String, String, String, Option<String>, String, String, String), Box<dyn std::error::Error>> {
	let mut conn = connect_to_db()?;
	let result = conn.exec_first(
			"SELECT id, username, last_name, first_name, middle_name, phone, email, status FROM users WHERE id = :id",
			params! { "id" => id },
	)?;
	result.ok_or_else(|| "Пользователь не найден".into())
}

pub fn edit_user(
	id: i32,
	username: &str,
	last_name: &str,
	first_name: &str,
	middle_name: Option<&str>,
	phone: &str,
	email: &str,
	status: &str,
) -> Result<(), Box<dyn std::error::Error>> {
	let mut conn = connect_to_db()?;
	conn.exec_drop(
			"UPDATE users SET username = :username, last_name = :last_name, first_name = :first_name, middle_name = :middle_name, phone = :phone, email = :email, status = :status WHERE id = :id",
			params! {
					"id" => id,
					"username" => username,
					"last_name" => last_name,
					"first_name" => first_name,
					"middle_name" => middle_name,
					"phone" => phone,
					"email" => email,
					"status" => status,
			},
	)?;
	Ok(())
}

pub fn get_documents() -> Result<Vec<(i32, String)>, Box<dyn std::error::Error>> {
	let mut conn = connect_to_db()?;
	let result = conn.query_map(
			"SELECT id, document_name FROM documents",
			|(id, document_name)| (id, document_name),
	)?;
	Ok(result)
}

pub fn add_document(name: &str) -> Result<(), Box<dyn std::error::Error>> {
	let mut conn = connect_to_db()?;
	conn.exec_drop(
			"INSERT INTO documents (document_name) VALUES (:name)",
			params! { "name" => name },
	)?;
	Ok(())
}

pub fn edit_document(id: i32, name: &str) -> Result<(), Box<dyn std::error::Error>> {
	let mut conn = connect_to_db()?;
	conn.exec_drop(
			"UPDATE documents SET document_name = :name WHERE id = :id",
			params! { "id" => id, "name" => name },
	)?;
	Ok(())
}

pub fn delete_document(id: i32) -> Result<(), Box<dyn std::error::Error>> {
	let mut conn = connect_to_db()?;
	conn.exec_drop(
			"DELETE FROM documents WHERE id = :id",
			params! { "id" => id },
	)?;
	Ok(())
}

#[derive(Serialize)]

pub struct Service {
    pub id: i32,
    pub name: String,
    pub image_url: Option<String>,
    pub description: Option<String>,
    pub required_documents: Option<String>,
    pub institution_id: i32,
    pub available_dates: Option<String>,
    pub occupied_dates: Option<String>,
}

// Функция для получения услуги по ID
pub fn get_service_by_id(service_id: i32) -> Result<Service, Box<dyn std::error::Error>> {
    let mut conn = connect_to_db()?;

    // Получаем услугу по ID
    let result = conn.exec_first::<(i32, String, Option<String>, Option<String>, i32, Option<String>, Option<String>), _, _>(
        "SELECT id, name, description, image_url, institution_id, available_dates, occupied_dates 
         FROM service_list 
         WHERE id = :id",
        params! { "id" => service_id },
    )?;

    // Если услуга найдена, создаем структуру Service
    if let Some((id, name, description, image_url, institution_id, available_dates, occupied_dates)) = result {
        Ok(Service {
            id,
            name,
            description,
            image_url,
            required_documents: None, // Вы можете добавить логику для получения required_documents, если нужно
            institution_id,
            available_dates,
            occupied_dates,
        })
    } else {
        Err("Услуга не найдена".into()) // Если услуга не найдена
    }
}
