<%@ page import="split.Personnalite" %>

<div class="row">
	<div class="col-xs-6 col-sm-6 col-md-6">
		<div class="form-group fieldcontain ${hasErrors(bean: personnaliteInstance, field: 'surnom', 'error')} required">
			<input type="text" name="surnom" required="" value="${personnaliteInstance?.surnom}" class="form-control input-lg" placeholder="Surnom" tabindex="1">
		</div>
	</div>
	<div class="col-xs-6 col-sm-6 col-md-6">
		<div class="form-group fieldcontain ${hasErrors(bean: personnaliteInstance, field: 'utilisateur', 'error')} required">
			<g:select class="form-control" placeholder="Utilisateur" from="${split.Utilisateur.list()}" optionKey="id" name="utilisateur"   value="${personnaliteInstance?.utilisateur?.id}" />
		</div>
	</div>
</div>
<div class="form-group fieldcontain ${hasErrors(bean: personnaliteInstance, field: 'description', 'error')}">
	<textarea  name="description" rows="3" required="" value="${personnaliteInstance?.description}" class="form-control" placeholder="Descrition" tabindex="2"></textarea>
</div>




