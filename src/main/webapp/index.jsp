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
        	<s:url action="hello" namespace="/hello" var="urlHello" />
            <a href="${urlHello}">
                <span class="menu-title">01. Hello World &amp; Form Simples</span>
                <br>
                <small>Conceitos: ActionSupport, Getters/Setters, struts.xml básico.</small>
            </a>
        </li>
        
        <li>
        	<s:url action="imc-form" namespace="/calculator-imc" var="urlCalculatorImc" />
            <a href="${urlCalculatorImc}">
                <span class="menu-title">02. Calculadora de IMC</span>
                <br>
                <small>Conceitos: Double, Navegação entre telas e Lógica de Negócio.</small>
            </a>
        </li>
        
        <li>
        	<s:url action="calculator" namespace="/calculator" var="urlCalculator" />
            <a href="${urlCalculator}">
                <span class="menu-title">03. Calculadora Básica</span>
                <br>
                <small>Conceitos: Lógica de Negócio.</small>
            </a>
        </li>
        
        <li>
        <s:url action="usuario-lista" namespace="/usuario-crud" var="urlUsuarioCrud" />
            <a href="${urlUsuarioCrud}">
                <span class="menu-title">04. Gerenciamento de Usuario</span>
                <br>
                <small>Conceitos: CRUD, JDBC e Padrão DAO</small>
            </a>
        </li>
	</ul>
</body>
</html>