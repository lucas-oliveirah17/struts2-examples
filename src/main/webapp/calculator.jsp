<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Calculadora Básica</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">	
</head>

<body>
	<h1>🧮 Calculadora Básica</h1>
	<div class="card">
		<s:if test="hasActionErrors()">
	        <div>
	            <s:actionerror/>
	        </div>
	    </s:if>
	    
		<s:form action="calculator">
		
			<s:textfield name="result" readOnly="true" label="Resultado"/>

	        <s:textfield name="number1" placeholder="Ex: 45,5" required="true" />
	     	
	   		<s:radio
		       name="operationSelected" 
		       list="availableOperation" 
		       listKey="name()" 
		       listValue="descricao"
		       required="true"
	        />
	        
	        <s:textfield name="number2" placeholder="Ex: 3" required="true" />
	        
	        <s:submit value="Calcular" cssClass="btn btn-success"/>
	    </s:form>   
	</div>
	
	<br>
    <a href="menu.action" class="btn btn-secondary">
    	<i class="fa fa-arrow-left"></i> Voltar
    </a>
	
</body>
</html>