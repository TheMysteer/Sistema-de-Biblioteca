<%-- 
    Document   : login
    Created on : 12 de mai. de 2025, 15:21:42
    Author     : devmy
--%>

<%@ include file="header.jsp" %>
<h2>Login</h2>
<form name="loginForm" onsubmit="return validateLogin()" method="post">
  <div class="mb-3">
    <label for="email" class="form-label">E-mail</label>
    <input type="email" class="form-control" id="email" name="email">
    <div class="invalid-feedback">Informe um e-mail válido.</div>
  </div>
  <div class="mb-3">
    <label for="password" class="form-label">Senha</label>
    <input type="password" class="form-control" id="password" name="password" minlength="6">
    <div class="invalid-feedback">A senha deve ter ao menos 6 caracteres.</div>
  </div>
  <button type="submit" class="btn btn-success">Entrar</button>
</form>
<%@ include file="footer.jsp" %>

