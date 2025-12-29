<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cadastro de Usuário</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
    <h1>
        <s:if test="usuario.id != null">✏️ Editar Usuário</s:if>
        <s:else>👤➕ Novo Usuário</s:else>
    </h1>

    <s:form action="usuario-salvar" theme="simple" class="card">
        <s:hidden name="usuario.id" />

        <label>Nome Completo:</label>
        <s:textfield name="usuario.nome" required="true" placeholder="Ex: Lucas Oliveira"/>

        <label>Usuário (Login):</label>
        <s:textfield name="usuario.usuario" required="true" placeholder="Ex: lucas.admin"/>

        <label>Senha:</label>
        <s:password name="usuario.senha" required="true" showPassword="true"/>

        <label>E-mail:</label>
        <s:textfield name="usuario.email" type="email" required="true" placeholder="Ex: lucas@email.com"/>

        <label>Cargo:</label>
        <s:select list="{'Desenvolvedor', 'Analista', 'Gerente', 'Estagiário', 'Suporte'}" 
                  name="usuario.cargo" 
                  headerKey="" headerValue="-- Selecione o Cargo --" 
                  required="true"/>

        <div>
            <s:submit value="Salvar Dados" cssClass="btn btn-success" />
            <a href="usuario-lista.action" class="btn btn-secondary">Cancelar</a>
        </div>
    </s:form>
</body>
</html>