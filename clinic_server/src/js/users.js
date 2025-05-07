const { invoke } = window.__TAURI__.core;

document.addEventListener("DOMContentLoaded", async () => {
  try {
    // Загружаем список пользователей
    await loadUsers();
  } catch (error) {
    console.error("Ошибка при загрузке пользователей:", error);
    alert("Ошибка при загрузке списка пользователей.");
  }
});

async function loadUsers() {
  const usersTableBody = document.getElementById("users-table-body");

  if (!usersTableBody) {
    console.error("Элемент с id 'users-table-body' не найден в DOM.");
    return;
  }

  try {
    // Запрашиваем список пользователей с сервера
    const users = await invoke("get_users");
    console.log("Полученные пользователи:", users);

    // Очищаем таблицу перед добавлением новых данных
    usersTableBody.innerHTML = "";

    // Добавляем пользователей в таблицу
    users.forEach((user) => {
      const row = document.createElement("tr");
      row.innerHTML = `
        <td>${user[0]}</td> <!-- ID -->
        <td>${user[1]}</td> <!-- Пользовательское имя -->
        <td>${user[2]}</td> <!-- Фамилия -->
        <td>${user[3]}</td> <!-- Имя -->
        <td>${user[4] || "-"}</td> <!-- Отчество -->
        <td>${user[5]}</td> <!-- Телефон -->
        <td>${user[6]}</td> <!-- Электронная почта -->
        <td>${user[7]}</td> <!-- Статус -->
        <td>
          <button onclick="editUser(${user[0]})" class="btn btn-primary btn-sm">Редактировать</button>
          <button onclick="deleteUser(${user[0]})" class="btn btn-danger btn-sm">Удалить</button>
        </td>
      `;
      usersTableBody.appendChild(row);
    });
  } catch (error) {
    console.error("Ошибка при загрузке пользователей:", error);
    alert("Не удалось загрузить список пользователей.");
  }
}

async function deleteUser(id) {
  try {
    const result = await invoke("delete_user", { id });
    if (result) {
      alert("Пользователь успешно удалён!");
      loadUsers(); // Перезагрузка списка пользователей
    }
  } catch (error) {
    console.error("Ошибка при удалении пользователя:", error);
    alert("Не удалось удалить пользователя.");
  }
}

function editUser(id) {
  window.location.href = `/edit_user.html?id=${id}`;
}

window.loadUsers = loadUsers;
window.deleteUser = deleteUser;
window.editUser = editUser;