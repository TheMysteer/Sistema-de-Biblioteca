<%-- 
    Document   : loan
    Created on : 12 de mai. de 2025, 15:22:15
    Author     : devmy
--%>

<%@ include file="header.jsp" %>
<h2>Solicitar Empréstimo</h2>
<form onsubmit="return confirm('Confirmar empréstimo?')">
  <p>Livro: <strong>Título Exemplo</strong></p>
  <p>Usuário: (usuário logado)</p>
  <button type="submit" class="btn btn-warning">Confirmar</button>
</form>
<%@ include file="footer.jsp" %>

