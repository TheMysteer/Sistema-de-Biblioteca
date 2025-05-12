<%@ include file="header.jsp" %>
<h1>Catálogo de Livros</h1>
<div class="row">
  <!-- Exemplo de card de livro -->
  <div class="col-md-4 mb-3">
    <div class="card">
      <i mg src="https://via.placeholder.com/150" class="card-img-top" alt="Capa Livro">
      <div class="card-body">
        <h5 class="card-title">Título Exemplo</h5>
        <p class="card-text">Autor Exemplo</p>
        <a href="loan.jsp" class="btn btn-primary">Solicitar Empréstimo</a>
      </div>
    </div>
  </div>
  <!-- repetir para outros livros -->
</div>
<%@ include file="footer.jsp" %>

