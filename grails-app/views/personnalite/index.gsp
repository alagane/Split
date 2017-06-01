
<%@ page import="split.Personnalite" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personnalite.label', default: 'Personnalite')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-personnalite" class="content scaffold-list" role="main">
			<h1>Personality List</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped table-hover">
			<thead>
					<tr>
					
						<th><g:message code="personnalite.surnom.label" default="Surnom" /></th>
					
						<th><g:message code="personnalite.description.label" default="Description" /></th>
					
						<th><g:message code="personnalite.utilisateur.label" default="Utilisateur" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${personnaliteInstanceList}" status="i" var="personnaliteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${personnaliteInstance.id}">${fieldValue(bean: personnaliteInstance, field: "surnom")}</g:link></td>
					
						<td>${fieldValue(bean: personnaliteInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: personnaliteInstance, field: "utilisateur")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${personnaliteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
