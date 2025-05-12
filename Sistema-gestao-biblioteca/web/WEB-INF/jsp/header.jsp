<%-- 
    Document   : header
    Created on : 12 de mai. de 2025, 15:21:02
    Author     : devmy
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Sistema de Biblioteca</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
  <!-- Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/validation.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary mb-4">
  <div class="container">
    <a class="navbar-brand" href="index.jsp">Biblioteca</a>
    <ul class="navbar-nav ms-auto">
      <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
      <li class="nav-item"><a class="nav-link" href="register.jsp">Cadastro</a></li>
    </ul>
  </div>
</nav>
<div class="container">
