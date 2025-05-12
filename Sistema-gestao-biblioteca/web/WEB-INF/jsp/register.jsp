<%-- 
    Document   : register
    Created on : 12 de mai. de 2025, 15:21:55
    Author     : devmy
--%>

<%@ include file="header.jsp" %>
<h2>Cadastro de Usuário</h2>
<form name="registerForm" onsubmit="return validateRegister()" method="post">
  <div class="mb-3">
    <label for="name" class="form-label">Nome Completo</label>
    <input type="text" class="form-control" id="name" name="name">
    <div class="invalid-feedback">Informe seu nome.</div>
  </div>
  <div class="mb-3">
    <label for="emailReg" class="form-label">E-mail</label>
    <input type="email" class="form-control" id="emailReg" name="email">
    <div class="invalid-feedback">E-mail inválido.</div>
  </div>
  <div class="mb-3">
    <label for="passwordReg" class="form-label">Senha</label>
    <input type="password" class="form-control" id="passwordReg" name="password" minlength="6">
    <div class="invalid-feedback">A senha deve ter ao menos 6 caracteres.</div>
  </div>
  <button type="submit" class="btn btn-primary">Cadastrar</button>
</form>
<%@ include file="footer.jsp" %>

