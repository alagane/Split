
<%@ page import="split.Personnalite" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personnalite.label', default: 'Personnalite')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-personnalite" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-personnalite" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="surnom" title="${message(code: 'personnalite.surnom.label', default: 'Surnom')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'personnalite.description.label', default: 'Description')}" />
					
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
