<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Resultado IMC</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
	
<body>
	<h1>Resultado</h1>

    <div style="background: #e8f6f3; padding: 20px; border-radius: 8px; border: 1px solid #a2d9ce;">
        <h2>Seu IMC é: <s:text name="format.number"><s:param value="imc"/></s:text> </h2>
        
        <h3>Diagnóstico: <strong><s:property value="grau" /></strong></h3>
    </div>

    <br>
    <a href="imc-form.action" class="btn btn-success">Calcular Novamente</a>
    
    <s:url action="index" namespace="/" var="urlIndex" />
    <a href="${urlIndex}" class="btn btn-secondary">
    	<i class="fa fa-arrow-left"></i> Voltar
   	</a>
</body>
</html>