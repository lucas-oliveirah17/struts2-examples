<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Struts 2 - HUB de Exemplos</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
</head>

<body>
    <h1>📚 Exemplos - Struts 2</h1>
    <p>Escolha um exemplo abaixo para rodar:</p>

    <ul class="menu-list">
        <li>
            <a href="hello.action">01. Hello World &amp; Form Simples</a>
            <br>
            <small>Conceitos: ActionSupport, Getters/Setters, struts.xml básico.</small>
        </li>
	</ul>
</body>
</html>