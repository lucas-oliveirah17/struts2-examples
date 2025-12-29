<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Calculadora IMC</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">	
</head>

<body>
	<h1>⚖️ Calculadora de IMC</h1>
	<div class="card">
		<div style="color: red">
	        <s:actionerror/>
	        <s:fielderror/>
	    </div>
	
	    <s:form action="calcularImc">
	        <s:textfield label="Seu Peso (kg)" name="peso" placeholder="Ex: 80,5" />
	        <s:textfield label="Sua Altura (m)" name="altura" placeholder="Ex: 1,75"  />
	        <s:submit value="Calcular Agora" cssClass="btn btn-success"/>
	    </s:form>
	    
	</div>
	<br>
	<a href="menu.action" class="btn btn-secondary">
		<i class="fa fa-arrow-left"></i> Voltar
	</a>
    
</body>
</html>