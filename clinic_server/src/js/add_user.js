const { invoke } = window.__TAURI__.core;

document.getElementById("register-form").addEventListener("submit", async (e) => {
  e.preventDefault();

  const username = document.getElementById("username").value;
  const lastName = document.getElementById("last-name").value;
  const firstName = document.getElementById("first-name").value;
  const middleName = document.getElementById("middle-name").value || null;
  const phone = document.getElementById("phone").value;
  const email = document.getElementById("email").value;
  const status = document.getElementById("status").value;
  const password = document.getElementById("password").value;

  try {
    const result = await invoke("register_user", {
      username,
      lastName,
      firstName,
      middleName,
      phone,
      email,
      status,
      password,
    });

    if (result) {
      alert("Пользователь успешно зарегистрирован!");
      window.location.href = "/login.html"; // Перенаправляем на страницу входа
    } else {
      alert("Ошибка при регистрации пользователя.");
    }
  } catch (error) {
    console.error("Ошибка при регистрации:", error);
    alert("Ошибка при регистрации пользователя.");
  }
});