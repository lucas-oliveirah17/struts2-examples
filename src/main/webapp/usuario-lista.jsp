<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Gestão de Usuários</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
    <h1>👥 Gestão de Usuários</h1>
	
	<div class="card">
		<s:a href="usuario-novo.action" class="btn btn-success">
	        <i class="fa fa-plus"></i> Novo Usuário
	    </s:a>
	    
	    <table class="data-table">
	        <thead>
	            <tr>
	                <th class="col-w5">ID</th>
	                <th class="col-w40">Nome</th>
	                <th class="col-w15">Login</th>
	                <th class="col-w20">Email</th>
	                <th class="col-w10">Cargo</th>
	                <th class="col-w10">Ações</th>
	            </tr>
	        </thead>
	        <tbody>
	            <s:iterator value="listaUsuarios">
	                <tr>
	                    <td class="text-center"><s:property value="id"/></td>
	                    <td><s:property value="nome"/></td>
	                    <td><s:property value="usuario"/></td>
	                    <td><s:property value="email"/></td>
	                    <td class="text-center"><s:property value="cargo"/></td>
	                    <td class="text-center">
	                        
	                        <s:url action="usuario-editar" var="urlEditar">
	                            <s:param name="idUsuario" value="id"></s:param>
	                        </s:url>
	                        <a href="${urlEditar}" class="btn btn-sm btn-edit" title="Editar">
	                            <i class="fa fa-pencil"></i>
	                        </a>
	
	                        <s:url action="usuario-excluir" var="urlExcluir">
	                            <s:param name="idUsuario" value="id"></s:param>
	                        </s:url>
	                        <a href="${urlExcluir}" class="btn btn-sm btn-delete" title="Excluir"
	                           onclick="return confirm('Tem certeza que deseja excluir?')">
	                           <i class="fa fa-trash"></i>
	                        </a>
	                        
	                    </td>
	                </tr>
	            </s:iterator>
	            
	            <s:if test="listaUsuarios.isEmpty()">
	                <tr>
	                    <td colspan="6" class="text-center">
	                        Nenhum usuário cadastrado.
	                    </td>
	                </tr>
	            </s:if>
	        </tbody>
	    </table>
	</div>
	

    <br>
    
    <s:url action="index" namespace="/" var="urlIndex" />
    <a href="${urlIndex}" class="btn btn-secondary">
        <i class="fa fa-arrow-left"></i> Voltar
    </a>
</body>
</html>