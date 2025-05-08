const { invoke } = window.__TAURI__.core;
function redirectToLogin() {
  window.location.replace("login.html"); // безопаснее — без возврата назад
}

// Функция для проверки авторизации
async function checkAuth() {
  try {
    const config = await invoke("read_config");
    console.log("Конфигурация:", config);

    if (!config.username || !config.password) {
      console.log("Данные авторизации отсутствуют");
      updateAuthStatus(false);
      redirectToLogin();
      return false;
    }

    const isValid = await invoke("login", {
      username: config.username,
      password: config.password,
    });

    console.log("Результат проверки авторизации:", isValid);
    updateAuthStatus(isValid);

    if (!isValid) {
      redirectToLogin();
      return false;
    }

    console.log("✅ Пользователь авторизован");
    return true;
  } catch (error) {
    console.error("Ошибка при проверке авторизации:", error);
    updateAuthStatus(false);
    redirectToLogin();
    return false;
  }
}

function updateAuthStatus(isAuthenticated) {
  const authStatus = document.getElementById("auth-status");
  if (isAuthenticated) {
    authStatus.textContent = "✅ Авторизован";
    authStatus.className = "badge bg-success";
  } else {
    authStatus.textContent = "❌ Не авторизован";
    authStatus.className = "badge bg-danger";
  }
}

export { checkAuth };

// filepath: c:\Users\ikaru\Desktop\med-uslugi(diplom)\clinic_server\src\js\auth.js
async function clearAuthData() {
  try {
    await invoke("write_config", {
      config: { username: null, password: null, devtools: false },
    });
    console.log("Данные авторизации очищены");
    window.location.href = "/login.html";
  } catch (error) {
    console.error("Ошибка при очистке данных авторизации:", error);
  }
}


document.addEventListener("DOMContentLoaded", () => {
  const logoutBtn = document.getElementById("logout-button");
  if (logoutBtn) {
    logoutBtn.addEventListener("click", () => {
      clearAuthData(); // теперь сам перенаправляет
    });
  }
});
