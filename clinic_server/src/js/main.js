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




