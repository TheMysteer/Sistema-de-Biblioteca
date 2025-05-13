// --- Validações de formulário ---
function validateLogin() {
  const email = document.getElementById('email');
  const pwd   = document.getElementById('password');
  let ok = true;

  if (!/^\S+@\S+\.\S+$/.test(email.value)) {
    email.classList.add('is-invalid'); ok = false;
  } else email.classList.remove('is-invalid');

  if (pwd.value.length < 6) {
    pwd.classList.add('is-invalid'); ok = false;
  } else pwd.classList.remove('is-invalid');

  return ok;
}

function validateRegister() {
  const name  = document.getElementById('name');
  const email = document.getElementById('emailReg');
  const pwd   = document.getElementById('passwordReg');
  let ok = true;

  if (name.value.trim() === '') {
    name.classList.add('is-invalid'); ok = false;
  } else name.classList.remove('is-invalid');

  if (!/^\S+@\S+\.\S+$/.test(email.value)) {
    email.classList.add('is-invalid'); ok = false;
  } else email.classList.remove('is-invalid');

  if (pwd.value.length < 6) {
    pwd.classList.add('is-invalid'); ok = false;
  } else pwd.classList.remove('is-invalid');

  return ok;
}

// --- Função de busca no catálogo ---
function filterBooks() {
  const query = document.getElementById('search-box').value.toLowerCase();
  document.querySelectorAll('.book-card').forEach(card => {
    const title = card.getAttribute('data-title').toLowerCase();
    card.style.display = title.includes(query) ? '' : 'none';
  });
}
