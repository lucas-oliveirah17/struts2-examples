<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Hello Struts</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
</head>

<body>
    
    <s:if test="username != null">
        <h2 style="color:green">Olá, <s:property value="username" />!</h2>
      	<h3 style="color:blue">Sua idade é, <s:property value="age" />!</h3>
        
    </s:if>
    
    <h1>Bem-vindo ao Sistema</h1>
    
    <s:form action="hello">
        <s:textfield label="Digite seu nome" name="username" />
        <s:textfield label="Sua idade" name="age"/>
        <s:submit value="Enviar Dados" />
    </s:form>
</body>
</html>