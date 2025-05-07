// Импортируем функцию invoke из Tauri для вызова команд на стороне Rust
const { invoke } = window.__TAURI__.core;

async function checkDbStatus() {
  try {
    const status = await invoke("get_db_status"); // Вызываем команду на стороне Rust
    console.log("Статус подключения к БД:", status);

    const statusDiv = document.getElementById("db-status");
    if (status === "success") {
      statusDiv.textContent = "✅ Подключение к БД установлено";
      statusDiv.style.color = "white";
    } else {
      statusDiv.textContent = `❌ Ошибка: ${status}`;
      statusDiv.style.color = "red";
    }
  } catch (error) {
    console.error("Ошибка при вызове команды get_db_status:", error);
  }
}

async function checkApiStatus() {
  const apiStatusElement = document.getElementById("api-status");

  try {
    // Отправляем запрос к вашему API
    const response = await fetch("http://127.0.0.1:3030/status"); // Убедитесь, что этот маршрут существует на сервере
    if (response.ok) {
      apiStatusElement.textContent = "✅ Сервер API: Активен";
      apiStatusElement.className = "badge bg-success";
    } else {
      apiStatusElement.textContent = "❌ Сервер API: Неактивен";
      apiStatusElement.className = "badge bg-danger";
    }
  } catch (error) {
    console.error("Ошибка при проверке статуса API:", error);
    apiStatusElement.textContent = "API: Ошибка";
    apiStatusElement.className = "badge bg-danger";
  }
}

// Проверяем статус подключения к БД после загрузки DOM
window.addEventListener("DOMContentLoaded", () => {
  console.log("DOM загружен");
  checkDbStatus();
	checkApiStatus(); // Вызываем функцию проверки статуса
});

const { saveAuthData, loadAuthData, clearAuthData } = require("./auth");

async function checkAuth() {
  const authData = loadAuthData();

  if (authData) {
    const { username, token } = authData;

    // Проверяем данные с сервером
    const isValid = await invoke("login", { username, password: token });
    if (isValid) {
      console.log("✅ Пользователь авторизован");
      return true;
    } else {
      console.log("❌ Неверные данные, требуется повторная авторизация");
      clearAuthData();
      return false;
    }
  }

  console.log("❌ Нет данных для авторизации");
  return false;
}

async function login(username, password) {
  const isValid = await invoke("login", { username, password });
  if (isValid) {
    saveAuthData(username, password);
    console.log("✅ Успешный вход");
    return true;
  } else {
    console.log("❌ Неверные данные");
    return false;
  }
}

// Проверяем авторизацию при запуске
window.addEventListener("DOMContentLoaded", async () => {
  const isAuthenticated = await checkAuth();
  if (!isAuthenticated) {
    // Перенаправляем на страницу авторизации
    window.location.href = "/login.html";
  }
});

// filepath: c:\Users\ikaru\Desktop\med-uslugi(diplom)\clinic_server\src\js\main.js
document.addEventListener("DOMContentLoaded", () => {
  const logoutButton = document.getElementById("logout-button"); // Найти кнопку "Выйти"
  if (logoutButton) {
    logoutButton.addEventListener("click", async () => {
      try {
        await invoke("write_config", { config: { username: null, password: null, devtools: false } });
        console.log("Данные авторизации очищены");
        window.location.href = "/login.html"; // Перенаправить на страницу входа
      } catch (error) {
        console.error("Ошибка при выходе из аккаунта:", error);
      }
    });
  }
});