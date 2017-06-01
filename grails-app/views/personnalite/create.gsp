<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personnalite.label', default: 'Personnalite')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>

	<g:if test="${utilisateur}">

		<div id="create-personnalite" class="content scaffold-create" role="main">
			<h1>Add a personality</h1>

			<div class="row">
				<div class="col-xs-12 col-sm-8 col-md-6">

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
					<g:form url="[resource:personnaliteInstance, action:'save']" >
						<fieldset class="form">
							<g:render template="form"/>
						</fieldset>
						<fieldset class="buttons">
							<div class="row">
								<div class="col-xs-6 col-md-6"><input type="submit" value="Add personnality" class="btn btn-primary btn-block btn-lg" tabindex="7"></div>
							</div>
						</fieldset>

					</g:form>

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
