/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function validateLogin() {
  const email = document.getElementById('email');
  const pwd   = document.getElementById('password');
  let ok = true;

  if (!email.value.match(/^\S+@\S+\.\S+$/)) {
    email.classList.add('is-invalid');
    ok = false;
  } else email.classList.remove('is-invalid');

  if (pwd.value.length < 6) {
    pwd.classList.add('is-invalid');
    ok = false;
  } else pwd.classList.remove('is-invalid');

  return ok;
}

function validateRegister() {
  const name = document.getElementById('name');
  const email = document.getElementById('emailReg');
  const pwd = document.getElementById('passwordReg');
  let ok = true;

  if (name.value.trim() === '') {
    name.classList.add('is-invalid');
    ok = false;
  } else name.classList.remove('is-invalid');

  if (!email.value.match(/^\S+@\S+\.\S+$/)) {
    email.classList.add('is-invalid');
    ok = false;
  } else email.classList.remove('is-invalid');

  if (pwd.value.length < 6) {
    pwd.classList.add('is-invalid');
    ok = false;
  } else pwd.classList.remove('is-invalid');

  return ok;
}
