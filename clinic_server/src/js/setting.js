const { invoke } = window.__TAURI__.core;

document.addEventListener("DOMContentLoaded", async () => {
  const form = document.getElementById("settings-form");
  const usernameInput = document.getElementById("username");
  const passwordInput = document.getElementById("password");
  const devtoolsToggle = document.getElementById("toggle-devtools");

  // Загрузка настроек из config.js
  try {
    const config = await invoke("read_config");
    if (config) {
      usernameInput.value = config.username || "";
      passwordInput.value = config.password || "";
      devtoolsToggle.checked = config.devtools || false;
    }
  } catch (error) {
    console.error("Ошибка при загрузке настроек:", error);
  }

  // Сохранение настроек
  form.addEventListener("submit", async (e) => {
    e.preventDefault();
    const newConfig = {
      username: usernameInput.value,
      password: passwordInput.value,
      devtools: devtoolsToggle.checked,
    };

    try {
      await invoke("write_config", { config: newConfig });
      alert("Настройки сохранены!");
    } catch (error) {
      console.error("Ошибка при сохранении настроек:", error);
    }
  });
});