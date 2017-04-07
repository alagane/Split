
<%@ page import="split.Utilisateur" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'utilisateur.label', default: 'Utilisateur')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-utilisateur" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-utilisateur" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nom" title="${message(code: 'utilisateur.nom.label', default: 'Nom')}" />
					
						<g:sortableColumn property="prenom" title="${message(code: 'utilisateur.prenom.label', default: 'Prenom')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'utilisateur.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="sexe" title="${message(code: 'utilisateur.sexe.label', default: 'Sexe')}" />
					
						<g:sortableColumn property="dateNaissance" title="${message(code: 'utilisateur.dateNaissance.label', default: 'Date Naissance')}" />
					
						<g:sortableColumn property="photo" title="${message(code: 'utilisateur.photo.label', default: 'Photo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${utilisateurInstanceList}" status="i" var="utilisateurInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${utilisateurInstance.id}">${fieldValue(bean: utilisateurInstance, field: "nom")}</g:link></td>
					
						<td>${fieldValue(bean: utilisateurInstance, field: "prenom")}</td>
					
						<td>${fieldValue(bean: utilisateurInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: utilisateurInstance, field: "sexe")}</td>
					
						<td><g:formatDate date="${utilisateurInstance.dateNaissance}" /></td>
					
						<td>${fieldValue(bean: utilisateurInstance, field: "photo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${utilisateurInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
