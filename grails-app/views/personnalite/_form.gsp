<%@ page import="split.Personnalite" %>



<div class="fieldcontain ${hasErrors(bean: personnaliteInstance, field: 'surnom', 'error')} required">
	<label for="surnom">
		<g:message code="personnalite.surnom.label" default="Surnom" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="surnom" required="" value="${personnaliteInstance?.surnom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personnaliteInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="personnalite.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${personnaliteInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personnaliteInstance, field: 'utilisateur', 'error')} required">
	<label for="utilisateur">
		<g:message code="personnalite.utilisateur.label" default="Utilisateur" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="utilisateur" name="utilisateur.id" from="${split.Utilisateur.list()}" optionKey="id" required="" value="${personnaliteInstance?.utilisateur?.id}" class="many-to-one"/>

</div>

