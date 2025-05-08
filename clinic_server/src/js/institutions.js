const { invoke } = window.__TAURI__.core;

// Загрузка списка учреждений
async function loadInstitutions() {
  try {
    const institutions = await invoke("get_medical_institutions");
    const tableBody = document.getElementById("institutions-list");

    tableBody.innerHTML = "";

    institutions.forEach(([id, name, address, phone, website]) => {
      const row = document.createElement("tr");

      row.innerHTML = `
        <td>${id}</td>
        <td>${name}</td>
        <td>${address}</td>
        <td>${phone}</td>
        <td>
          <button class="btn btn-primary btn-sm open-btn" data-id="${id}">Открыть</button>
          <button class="btn btn-warning btn-sm edit-btn"
            data-id="${id}"
            data-name="${name}"
            data-address="${address}"
            data-phone="${phone}"
            data-website="${website}"
          >Редактировать</button>
          <button class="btn btn-danger btn-sm delete-btn" data-id="${id}">Удалить</button>
        </td>
      `;

      tableBody.appendChild(row);
    });

    document.querySelectorAll(".edit-btn").forEach((button) => {
      button.addEventListener("click", (e) => {
        const btn = e.target;
        openEditModal(
          btn.dataset.id,
          btn.dataset.name,
          btn.dataset.address,
          btn.dataset.phone,
          btn.dataset.website
        );
      });
    });

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

// Добавление учреждения
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
      bootstrap.Modal.getInstance(document.getElementById("addInstitutionModal")).hide();
      loadInstitutions();
      alert("Медицинское учреждение успешно добавлено!");
    } else {
      alert("Ошибка при добавлении учреждения.");
    }
  } catch (error) {
    console.error("Ошибка при добавлении учреждения:", error);
    alert("Ошибка при добавлении учреждения.");
  }
}

document.getElementById("add-institution-form").addEventListener("submit", addInstitution);

// Модальное редактирование
function openEditModal(id, name, address, phone, website) {
  document.getElementById("edit-id").value = id;
  document.getElementById("edit-name").value = name;
  document.getElementById("edit-address").value = address;
  document.getElementById("edit-phone").value = phone;
  document.getElementById("edit-website").value = website;
  new bootstrap.Modal(document.getElementById("editInstitutionModal")).show();
}

async function submitEdit(event) {
  event.preventDefault();

  const id = parseInt(document.getElementById("edit-id").value, 10);
  const name = document.getElementById("edit-name").value;
  const address = document.getElementById("edit-address").value;
  const contactInfo = document.getElementById("edit-phone").value;
  const website = document.getElementById("edit-website").value;

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
      bootstrap.Modal.getInstance(document.getElementById("editInstitutionModal")).hide();
      alert("Медицинское учреждение успешно обновлено!");
      loadInstitutions();
    } else {
      alert("Ошибка при редактировании учреждения.");
    }
  } catch (error) {
    console.error("Ошибка при редактировании учреждения:", error);
    alert("Ошибка при редактировании учреждения.");
  }
}

async function deleteInstitution(id) {
  if (!confirm("Вы уверены, что хотите удалить это учреждение?")) return;

  try {
    const result = await invoke("delete_medical_institution", { id });

    if (result) {
      alert("Медицинское учреждение успешно удалено!");
      loadInstitutions();
    } else {
      alert("Ошибка при удалении учреждения.");
    }
  } catch (error) {
    console.error("Ошибка при удалении учреждения:", error);
    alert("Ошибка при удалении учреждения.");
  }
}

function openInstitution(id) {
  window.location.href = `/catalog.html?institutionId=${id}`;
}

document.addEventListener("DOMContentLoaded", loadInstitutions);
document.getElementById("edit-institution-form").addEventListener("submit", submitEdit);
