const { invoke } = window.__TAURI__.core;

// Функция для загрузки списка учреждений
async function loadInstitutions() {
  try {
    const institutions = await invoke("get_medical_institutions");
    const tableBody = document.getElementById("institutions-list");

    // Очищаем таблицу перед добавлением новых данных
    tableBody.innerHTML = "";

    institutions.forEach(([id, name, address, phone]) => {
      const row = document.createElement("tr");

      row.innerHTML = `
        <td>${id}</td>
        <td>${name}</td>
        <td>${address}</td>
        <td>${phone}</td>
        <td>
					<button class="btn btn-primary btn-sm open-btn" data-id="${id}">Открыть</button>
          <button class="btn btn-warning btn-sm edit-btn" data-id="${id}">Редактировать</button>
  				<button class="btn btn-danger btn-sm delete-btn" data-id="${id}">Удалить</button>
        </td>
      `;

      tableBody.appendChild(row);
    });

    // Добавляем обработчики для кнопок "Редактировать"
		document.querySelectorAll(".edit-btn").forEach((button) => {
			button.addEventListener("click", (e) => {
				const id = parseInt(e.target.getAttribute("data-id"), 10);
				editInstitution(id);
			});
		});

		// Добавляем обработчики для кнопок "Удалить"
		document.querySelectorAll(".delete-btn").forEach((button) => {
			button.addEventListener("click", (e) => {
				const id = parseInt(e.target.getAttribute("data-id"), 10);
				deleteInstitution(id);
			});
		});

		document.querySelectorAll(".open-btn").forEach((button) => {
			button.addEventListener("click", (e) => {
				const id = parseInt(e.target.getAttribute("data-id"), 10);
				openInstitution(id);
			});
		});
  } catch (error) {
    console.error("Ошибка при загрузке учреждений:", error);
  }
}

// Функция для добавления учреждения
async function addInstitution(event) {
  event.preventDefault();

  const name = document.getElementById("institution-name").value;
  const address = document.getElementById("institution-address").value;
  const contactInfo = document.getElementById("institution-contact").value;
  const website = document.getElementById("institution-website").value;

  try {
    const result = await invoke("add_medical_institution", {
      name,
      address,
      contactInfo,
      website,
    });

    if (result) {
      document.getElementById("add-institution-form").reset();
      const modal = bootstrap.Modal.getInstance(document.getElementById("addInstitutionModal"));
      modal.hide();
      loadInstitutions(); // Перезагружаем список учреждений
      alert("Медицинское учреждение успешно добавлено!");
    } else {
      alert("Ошибка при добавлении учреждения.");
    }
  } catch (error) {
    console.error("Ошибка при добавлении учреждения:", error);
    alert("Ошибка при добавлении учреждения.");
  }
}

// Удаляем обработчик для кнопки "Добавить учреждение"
// Эта кнопка должна только открывать модальное окно

// Добавляем обработчик для формы
document.getElementById("add-institution-form").addEventListener("submit", addInstitution);

// Функция для редактирования учреждения
async function editInstitution(id) {
  const name = prompt("Введите новое название учреждения:");
  const address = prompt("Введите новый адрес:");
  const contactInfo = prompt("Введите новую контактную информацию:");
  const website = prompt("Введите новый веб-сайт:");

  if (!name || !address || !contactInfo || !website) {
    alert("Все поля должны быть заполнены!");
    return;
  }

  try {
    const result = await invoke("edit_medical_institution", {
      id,
      name,
      address,
      contactInfo,
      website,
    });

    if (result) {
      alert("Медицинское учреждение успешно обновлено!");
      loadInstitutions(); // Перезагружаем список учреждений
    } else {
      alert("Ошибка при редактировании учреждения.");
    }
  } catch (error) {
    console.error("Ошибка при редактировании учреждения:", error);
    alert("Ошибка при редактировании учреждения.");
  }
}

async function deleteInstitution(id) {
  if (!confirm("Вы уверены, что хотите удалить это учреждение?")) {
    return;
  }

  try {
    const result = await invoke("delete_medical_institution", { id });

    if (result) {
      alert("Медицинское учреждение успешно удалено!");
      loadInstitutions(); // Перезагружаем список учреждений
    } else {
      alert("Ошибка при удалении учреждения.");
    }
  } catch (error) {
    console.error("Ошибка при удалении учреждения:", error);
    alert("Ошибка при удалении учреждения.");
  }
}

async function openInstitution(id) {
  // Перенаправляем на страницу каталога с передачей ID учреждения
  window.location.href = `/catalog.html?institutionId=${id}`;
}

// Загружаем список учреждений при загрузке страницы
document.addEventListener("DOMContentLoaded", () => {
  loadInstitutions();
});