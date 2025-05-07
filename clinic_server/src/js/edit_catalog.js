const { invoke } = window.__TAURI__.core;

document.addEventListener("DOMContentLoaded", async () => {
  const urlParams = new URLSearchParams(window.location.search);
  const serviceId = urlParams.get("id");

  if (!serviceId) {
    alert("ID услуги не указан!");
    return;
  }

  // Загрузка данных услуги
  try {
    const [id, name, description, imageUrl, availableDates, occupiedDates, documents] = await invoke("get_catalog_item_details", { id: parseInt(serviceId, 10) });
    document.getElementById("service-id").value = id;
    document.getElementById("service-name").value = name;
    document.getElementById("service-description").value = description;
    document.getElementById("service-image").value = imageUrl;
    document.getElementById("service-available-dates").value = availableDates;
    document.getElementById("service-occupied-dates").value = occupiedDates;
  } catch (error) {
    console.error("Ошибка при загрузке данных услуги:", error);
  }

  // Сохранение изменений
  document.getElementById("edit-form").addEventListener("submit", async (e) => {
    e.preventDefault();
    try {
      const result = await invoke("edit_catalog_item", {
        id: parseInt(document.getElementById("service-id").value, 10),
        name: document.getElementById("service-name").value,
        description: document.getElementById("service-description").value,
        image_url: document.getElementById("service-image").value,
        available_dates: document.getElementById("service-available-dates").value,
        occupied_dates: document.getElementById("service-occupied-dates").value,
      });
      if (result) {
        alert("Услуга успешно обновлена!");
        window.location.href = "/catalog.html";
      }
    } catch (error) {
      console.error("Ошибка при сохранении изменений:", error);
    }
  });
});