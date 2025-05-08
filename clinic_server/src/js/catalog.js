const { invoke } = window.__TAURI__.core;

document.addEventListener("DOMContentLoaded", async () => {
    const urlParams = new URLSearchParams(window.location.search);
    const institutionId = urlParams.get("institutionId");

    if (!institutionId) {
        alert("ID учреждения не указан!");
        return;
    }

    try {
        // Получаем данные учреждения (например, название)
        const institution = await invoke("get_institution_by_id", { id: parseInt(institutionId, 10) });
        document.getElementById("institution-name").textContent = `Каталог учреждения: ${institution.name}`;

        // Загружаем каталог услуг учреждения
        loadCatalog();
    } catch (error) {
        console.error("Ошибка при загрузке каталога:", error);
        alert("Ошибка при загрузке каталога.");
    }
});

async function loadCatalog() {
    const institutionId = new URLSearchParams(window.location.search).get("institutionId");

    if (!institutionId) {
        alert("ID учреждения не указан!");
        return;
    }

    try {
        // Загружаем каталог услуг учреждения
        const catalog = await invoke("get_catalog_by_institution_id", { institutionId: parseInt(institutionId, 10) });
        const catalogList = document.getElementById("catalog-list");

        // Очищаем текущий список
        catalogList.innerHTML = "";

        // Добавляем обновлённые данные
        catalog.forEach(([id, name, description]) => {
            const row = document.createElement("tr");
            row.innerHTML = `
                <td>${id}</td>
                <td>${name}</td>
                <td>${description}</td>
                <td>
                    <button onclick="openCatalogItem(${id})" class="btn btn-primary btn-sm open-btn">Открыть</button>
                    <button onclick="deleteCatalogItem(${id})" class="btn btn-danger btn-sm delete-btn">Удалить</button>
                </td>
            `;
            catalogList.appendChild(row);
        });
    } catch (error) {
        console.error("Ошибка при загрузке каталога:", error);
        alert("Ошибка при загрузке каталога.");
    }
}

function openCatalogItem(id) {
    window.location.href = `/edit_catalog.html?id=${id}`;
}
window.openCatalogItem = openCatalogItem;

async function deleteCatalogItem(id) {
    try {
        const result = await invoke("delete_catalog_item", { id });
        if (result) {
            alert("Услуга успешно удалена!");
            loadCatalog(); // Перезагрузка каталога
        }
    } catch (error) {
        console.error("Ошибка при удалении услуги:", error);
    }
}
window.deleteCatalogItem = deleteCatalogItem;

async function addCatalogItem() {
		const institutionId = new URLSearchParams(window.location.search).get("institutionId");
		console.log("Institution ID:", institutionId);
    const name = document.getElementById("service-name").value;
		console.log("service-name:", name);
    const description = document.getElementById("service-description").value;
		console.log("service-description:", description);
    const imageUrl = document.getElementById("service-image-url").value;
		console.log("service-image-url:", imageUrl);
    const availableDates = document.getElementById("service-available-dates").value;
		console.log("service-available-dates:", availableDates);
    const occupiedDates = document.getElementById("service-occupied-dates").value;
		console.log("service-occupied-dates:", occupiedDates);
    const requiredDocuments = document.getElementById("service-required-documents").value;
        console.log("service-required-documents:", requiredDocuments);
        

		console.log("Вызов команды add_catalog_item с данными:", {
			institution_id: parseInt(institutionId, 10),
			name,
			description: description || null,
			imageUrl: imageUrl || null,
			availableDates: availableDates || null,
			occupiedDates: availableDates || null,
            requiredDocuments: requiredDocuments || null,
	});

    try {
        const result = await invoke("add_catalog_item", {
						institutionId: parseInt(institutionId, 10),
            name,
            description: description || null,
            imageUrl: imageUrl || null,
            availableDates: availableDates || null,
            occupiedDates: occupiedDates || null,
            requiredDocuments: requiredDocuments || null,
        });

        if (result) {
            alert("Услуга успешно добавлена!");
            loadCatalog(); // Перезагрузка каталога
            const modal = bootstrap.Modal.getInstance(document.getElementById("addServiceModal"));
            modal.hide(); // Закрыть модальное окно
        }
    } catch (error) {
        console.error("Ошибка при добавлении услуги:", error);
        alert("Не удалось добавить услугу.");
    }
}

window.addCatalogItem = addCatalogItem;