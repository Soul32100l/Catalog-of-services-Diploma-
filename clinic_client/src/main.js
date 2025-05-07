document.addEventListener("DOMContentLoaded", async () => {
  const container = document.getElementById("institutions-container");

  try {
    const response = await fetch("http://127.0.0.1:3030/medical_institutions");
    const data = await response.json();

    if (Array.isArray(data)) {
      data.forEach((institution) => {
        const card = document.createElement("div");
        card.className = "institution-card";
        card.innerHTML = `
          <h2>${institution[1]}</h2>
          <p><strong>Адрес:</strong> ${institution[2]}</p>
          <p><strong>Телефон:</strong> ${institution[3]}</p>
          <a href="${institution[4]}" target="_blank" class="button">Перейти на сайт</a>
        `;

        // Переход на страницу с услугами
        card.addEventListener("click", () => {
          const institutionId = institution[0];
          window.location.href = `services.html?id=${institutionId}`;
        });

        container.appendChild(card);
      });
    } else {
      container.innerHTML = "<p>Не удалось загрузить данные.</p>";
    }
  } catch (error) {
    console.error("Ошибка при загрузке данных:", error);
    container.innerHTML = "<p>Ошибка при загрузке данных.</p>";
  }
});
