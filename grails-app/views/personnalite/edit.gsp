<%@ page import="split.Personnalite" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personnalite.label', default: 'Personnalite')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="edit-personnalite" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${personnaliteInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${personnaliteInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:personnaliteInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${personnaliteInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<div class="col-xs-2 col-md-2"><input type="submit" value="Update" class="btn btn-primary btn-block btn-lg" tabindex="7"></div>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>