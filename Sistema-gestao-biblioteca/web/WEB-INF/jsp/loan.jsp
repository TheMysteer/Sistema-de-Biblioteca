<%-- 
    Document   : loan
    Created on : 12 de mai. de 2025, 15:22:15
    Author     : devmy
--%>

<%@ include file="header.jsp" %>
<h2>Solicitar Empr�stimo</h2>
<form onsubmit="return confirm('Confirmar empr�stimo?')">
  <p>Livro: <strong>T�tulo Exemplo</strong></p>
  <p>Usu�rio: (usu�rio logado)</p>
  <button type="submit" class="btn btn-warning">Confirmar</button>
</form>
<%@ include file="footer.jsp" %>

