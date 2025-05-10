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

// Проверка статуса API и авторизации пользователя, управление кнопками в header
async function updateHeaderAuthAndApiStatus() {
  // Проверка API
  const apiStatusEl = document.getElementById('api-status');
  try {
    const res = await fetch('http://127.0.0.1:3030/ping');
    if (res.ok) {
      apiStatusEl.textContent = 'API работает';
      apiStatusEl.classList.remove('bg-danger');
      apiStatusEl.classList.add('bg-success');
    } else {
      apiStatusEl.textContent = 'API недоступно';
      apiStatusEl.classList.remove('bg-success');
      apiStatusEl.classList.add('bg-danger');
    }
  } catch {
    apiStatusEl.textContent = 'API недоступно';
    apiStatusEl.classList.remove('bg-success');
    apiStatusEl.classList.add('bg-danger');
  }

  // Проверка авторизации
  const token = localStorage.getItem('token');
  const loginBtn = document.getElementById('login-header-btn');
  const logoutBtn = document.getElementById('logout-header-btn');
  if (!loginBtn || !logoutBtn) return;
  if (token) {
    // Проверяем токен на сервере
    try {
      const res = await fetch('http://127.0.0.1:3030/check_token', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ token })
      });
      const data = await res.json();
      if (data.success) {
        loginBtn.style.display = 'none';
        logoutBtn.style.display = '';
        return;
      }
    } catch {}
    localStorage.removeItem('token');
  }
  loginBtn.style.display = '';
  logoutBtn.style.display = 'none';
}

// Обработчики кнопок в header
function setupHeaderAuthButtons() {
  const loginBtn = document.getElementById('login-header-btn');
  const logoutBtn = document.getElementById('logout-header-btn');
  if (loginBtn) {
    loginBtn.onclick = () => {
      localStorage.setItem('from_page', location.pathname.replace(/^.*[\\/]/, ''));
      window.location.href = 'auth.html';
    };
  }
  if (logoutBtn) {
    logoutBtn.onclick = async () => {
      const token = localStorage.getItem('token');
      if (token) {
        try {
          await fetch('http://127.0.0.1:3030/logout', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ token })
          });
        } catch {}
        localStorage.removeItem('token');
      }
      updateHeaderAuthAndApiStatus();
    };
  }
}

// Ждём появления header и инициализируем
function waitHeaderAndInit() {
  const header = document.getElementById('header-container');
  if (!header || !header.innerHTML) {
    setTimeout(waitHeaderAndInit, 100);
    return;
  }
  updateHeaderAuthAndApiStatus();
  setupHeaderAuthButtons();
}

waitHeaderAndInit();
