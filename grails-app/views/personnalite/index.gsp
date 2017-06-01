
<%@ page import="split.Personnalite" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personnalite.label', default: 'Personnalite')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

	<g:if test="${utilisateur}">

		<div id="list-personnalite" class="content scaffold-list" role="main">
			<h1>Your personalities</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped">
				<thead>
					<tr>
						<g:sortableColumn property="surnom" title="${message(code: 'personnalite.surnom.label', default: 'Surnom')}" />
						<g:sortableColumn property="description" title="${message(code: 'personnalite.description.label', default: 'Description')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${personnaliteInstanceList}" status="i" var="personnaliteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="show" id="${personnaliteInstance.id}">${fieldValue(bean: personnaliteInstance, field: "surnom")}</g:link></td>
						<td>${fieldValue(bean: personnaliteInstance, field: "description")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${personnaliteInstanceCount ?: 0}" />
			</div>

			<g:form controller="personnalite" action="create" class="form-inline">
				<button type="submit" class="btn btn-info">Create a personnality</button>
			</g:form>

		</div>
	</g:if>
	<g:else>
		<div class="alert alert-warning">
			<strong>Ooops...</strong> You must be logged in for create a personnality :)
		</div>
	</g:else>

	</body>
</html>
