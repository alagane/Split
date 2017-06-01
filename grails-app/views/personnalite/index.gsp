
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

			<h1> Add a personality</h1>

			<div class="row">
				<div class="col-xs-12 col-sm-8 col-md-6">

					<div class="form-group fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'email', 'error')} required">
						<input type="email" name="email" required="" value="${utilisateurInstance?.email}" class="form-control input-lg" placeholder="Surnom" tabindex="1">
					</div>

					<div class="form-group fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'sexe', 'error')} required">
						<label for="comment">Description:</label>
						<textarea name="description" required="" value="${utilisateurInstance?.sexe}"  class="form-control" rows="5" id="comment"></textarea>
					</div>

					<fieldset class="buttons">
						<div class="row">
							<div class="col-xs-6 col-md-6"><input type="submit" value="Add personnality" class="btn btn-primary btn-block btn-lg" tabindex="7"></div>
						</div>
					</fieldset>

				</div>
			</div>
		</div>
	</g:if>
	<g:else>
		<div class="alert alert-warning">
			<strong>Ooops...</strong> You must be logged in for create a personnality :)
		</div>
	</g:else>

	</body>
</html>
