<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Hello Struts</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
    <h1>Bem-vindo ao Sistema</h1>

    <div class="card">
    	<s:if test="username != null">
	        <h2 style="color:green">Olá, <s:property value="username" />!</h2>
	      	<h3 style="color:blue">Sua idade é, <s:property value="age" />!</h3>       
	    </s:if>
	    	    
	    <s:form action="hello">
	        <s:textfield label="Digite seu nome" name="username" />
	        <s:textfield label="Sua idade" name="age"/>
	        <s:submit value="Enviar Dados" cssClass="btn btn-success" />
	    </s:form>
	    
	    <br>
	    <a href="menu.action" class="btn btn-secondary">
	    	<i class="fa fa-arrow-left"></i> Voltar para o Menu
	    </a>
    </div>
</body>
</html>