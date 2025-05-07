const { invoke } = window.__TAURI__.core;

document.addEventListener("DOMContentLoaded", async () => {
  const urlParams = new URLSearchParams(window.location.search);
	const userId = urlParams.get("id");

if (!userId) {
  alert("ID пользователя не указан!");
  return;
}

try {
  const [id, username, lastName, firstName, middleName, phone, email, status] = await invoke("get_user_details", { id: parseInt(userId, 10) });
  document.getElementById("user-id").value = id;
  document.getElementById("username").value = username;
  document.getElementById("last-name").value = lastName;
  document.getElementById("first-name").value = firstName;
  document.getElementById("middle-name").value = middleName || "";
  document.getElementById("phone").value = phone;
  document.getElementById("email").value = email;
  document.getElementById("status").value = status;
} catch (error) {
  console.error("Ошибка при загрузке данных пользователя:", error);
}
console.log({
  id: parseInt(document.getElementById("user-id").value, 10),
  username: document.getElementById("username").value,
  last_name: document.getElementById("last-name").value,
  first_name: document.getElementById("first-name").value,
  middle_name: document.getElementById("middle-name").value || null,
  phone: document.getElementById("phone").value,
  email: document.getElementById("email").value,
  status: document.getElementById("status").value,
});
  // Сохранение изменений
  document.getElementById("edit-form").addEventListener("submit", async (e) => {
    e.preventDefault();
    try {
      const result = await invoke("edit_user", {
				id: parseInt(document.getElementById("user-id").value, 10),
				username: document.getElementById("username").value,
				lastName: document.getElementById("last-name").value, // Исправлено
				firstName: document.getElementById("first-name").value, // Исправлено
				middleName: document.getElementById("middle-name").value || null, // Исправлено
				phone: document.getElementById("phone").value,
				email: document.getElementById("email").value,
				status: document.getElementById("status").value,
			});
      if (result) {
        alert("Пользователь успешно обновлён!");
        window.location.href = "/users.html";
      }
    } catch (error) {
      console.error("Ошибка при сохранении изменений:", error);
    }
  });
});