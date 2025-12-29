<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Calculadora IMC</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
</head>

<body>
	<h1>⚖️ Calculadora de IMC</h1>
    
    <div style="color: red">
        <s:actionerror/>
        <s:fielderror/>
    </div>

    <s:form action="calcularImc">
        <s:textfield label="Seu Peso (kg)" name="peso" placeholder="Ex: 80,5" />
        <s:textfield label="Sua Altura (m)" name="altura" placeholder="Ex: 1,75"  />
        <s:submit value="Calcular Agora" />
    </s:form>
    
    <br>
    <a href="menu.action" class="voltar">⬅ Voltar para o Menu</a>
    
</body>
</html>