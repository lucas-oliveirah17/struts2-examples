<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Calculadora Básica</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
</head>

<body>
	<h1>🧮 Calculadora Básica</h1>
	
	<s:if test="hasActionErrors()">
        <div>
            <s:actionerror/>
        </div>
    </s:if>
    
	<s:form action="calculator">
		<s:textfield name="result" label="Resultado" readOnly="true"/>
	
        <s:textfield name="number1" placeholder="Ex: 45,5" required="true" />
     	
   		<s:radio label="Selecione a Operação" 
	       name="operationSelected" 
	       list="availableOperation" 
	       listKey="name()" 
	       listValue="descricao"
	       required="true"
        />
        
        <s:textfield name="number2" placeholder="Ex: 3" required="true" />
        
        <s:submit value="Calcular" />
    </s:form>
    
    <br>
    <a href="menu.action" class="voltar">⬅ Voltar para o Menu</a>
</body>
</html>