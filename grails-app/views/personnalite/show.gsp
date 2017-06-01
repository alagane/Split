
<%@ page import="split.Personnalite" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personnalite.label', default: 'Personnalite')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="show-personnalite" class="content scaffold-show" role="main">
			<h1>Show personality</h1>

			<table class="table table-striped">
				<thead>
				<tr>
					<th><g:message code="personnalite.surnom.label" default="Surnom" /></th>

					<th><g:message code="personnalite.description.label" default="Description" /></th>

					<th><g:message code="personnalite.utilisateur.label" default="Utilisateur" /></th>
				</tr>
				</thead>
				<tbody>
					<tr>
						<td><g:fieldValue bean="${personnaliteInstance}" field="surnom"/></td>
						<td><g:fieldValue bean="${personnaliteInstance}" field="description"/></td>
						<td><g:fieldValue bean="${personnaliteInstance}" field="utilisateur"/></td>
					</tr>
				</tbody>
			</table>
			<g:form url="[resource:personnaliteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${personnaliteInstance}">Edit</g:link>
				   <div class="col-xs-2 col-md-2"><input type="submit" value="Delete" class="btn btn-primary btn-block btn-lg" tabindex="7"></div>
			</g:form>
		</div>
	</body>
</html>
