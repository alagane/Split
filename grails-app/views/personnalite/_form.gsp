<%@ page import="split.Personnalite" %>

<div class="form-group fieldcontain ${hasErrors(bean: personnaliteInstance, field: 'surnom', 'error')} required">
	<input type="text" name="surnom" required="" value="${personnaliteInstance?.surnom}" class="form-control input-lg" placeholder="Surnom" tabindex="1">
</div>

<div class="form-group fieldcontain ${hasErrors(bean: personnaliteInstance, field: 'description', 'error')} required">
	<label for="comment">Description:</label>
	<textarea type="text" name="description" required="" value="${personnaliteInstance?.description}"  class="form-control" rows="5" id="comment"></textarea>
</div>

<div style="visibility: hidden;" class="fieldcontain ${hasErrors(bean: personnaliteInstance, field: 'utilisateur', 'error')} required">
	<g:select id="utilisateur" name="utilisateur.id" from="${split.Utilisateur.list()}" optionKey="id" required="" value="${utilisateur}" class="many-to-one"/>
</div>


