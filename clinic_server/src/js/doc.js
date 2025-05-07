const { invoke } = window.__TAURI__.core;

document.addEventListener("DOMContentLoaded", async () => {
    try {
        await loadDocuments();
    } catch (error) {
        console.error("Ошибка при загрузке документов:", error);
        alert("Ошибка при загрузке списка документов.");
    }
});

async function loadDocuments() {
    const documentsTableBody = document.getElementById("documents-table-body");

    try {
        // Загружаем список документов
        const documents = await invoke("get_documents");
        documentsTableBody.innerHTML = "";

        // Отображаем документы в таблице
        documents.forEach(([id, name]) => {
            const row = document.createElement("tr");
            row.innerHTML = `
                <td>${id}</td>
                <td>${name}</td>
                <td>
                    <button onclick="openEditDocumentModal(${id}, '${name}')" class="btn btn-primary btn-sm">Редактировать</button>
                    <button onclick="deleteDocument(${id})" class="btn btn-danger btn-sm">Удалить</button>
                </td>
            `;
            documentsTableBody.appendChild(row);
        });
    } catch (error) {
        console.error("Ошибка при загрузке документов:", error);
        alert("Не удалось загрузить список документов.");
    }
}

async function addDocument() {
    const name = document.getElementById("document-name").value;

    try {
        await invoke("add_document", { name });
        alert("Документ успешно добавлен!");
        document.getElementById("add-document-form").reset();
        const modal = bootstrap.Modal.getInstance(document.getElementById("addDocumentModal"));
        modal.hide();
        await loadDocuments();
    } catch (error) {
        console.error("Ошибка при добавлении документа:", error);
        alert("Не удалось добавить документ.");
    }
}

async function openEditDocumentModal(id, name) {
    document.getElementById("edit-document-id").value = id;
    document.getElementById("edit-document-name").value = name;
    const modal = new bootstrap.Modal(document.getElementById("editDocumentModal"));
    modal.show();
}

async function editDocument() {
    const id = parseInt(document.getElementById("edit-document-id").value, 10);
    const name = document.getElementById("edit-document-name").value;

    try {
        await invoke("edit_document", { id, name });
        alert("Документ успешно обновлён!");
        const modal = bootstrap.Modal.getInstance(document.getElementById("editDocumentModal"));
        modal.hide();
        await loadDocuments();
    } catch (error) {
        console.error("Ошибка при редактировании документа:", error);
        alert("Не удалось обновить документ.");
    }
}

async function deleteDocument(id) {
    if (!confirm("Вы уверены, что хотите удалить этот документ?")) return;

    try {
        await invoke("delete_document", { id });
        alert("Документ успешно удалён!");
        await loadDocuments();
    } catch (error) {
        console.error("Ошибка при удалении документа:", error);
        alert("Не удалось удалить документ.");
    }
}

// Привязываем обработчики событий
document.getElementById("add-document-form").addEventListener("submit", (e) => {
    e.preventDefault();
    addDocument();
});

document.getElementById("edit-document-form").addEventListener("submit", (e) => {
    e.preventDefault();
    editDocument();
});

window.loadDocuments = loadDocuments;
window.deleteDocument = deleteDocument;
window.openEditDocumentModal = openEditDocumentModal;