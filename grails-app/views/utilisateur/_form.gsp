<%@ page import="split.Utilisateur" %>



<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'nom', 'error')} required">
    <label for="nom">
        <g:message code="utilisateur.nom.label" default="Nom"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="nom" required="" value="${utilisateurInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'prenom', 'error')} required">
    <label for="prenom">
        <g:message code="utilisateur.prenom.label" default="Prenom"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="prenom" required="" value="${utilisateurInstance?.prenom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'email', 'error')} required">
    <label for="email">
        <g:message code="utilisateur.email.label" default="Email"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="email" name="email" required="" value="${utilisateurInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'sexe', 'error')} required">
    <label for="sexe">
        <g:message code="utilisateur.sexe.label" default="Sexe"/>
        <span class="required-indicator">*</span>
    </label>
    Homme <g:radio name="sexe" value="M" checked="${utilisateurInstance?.sexe == "M"}"/>
    Femme <g:radio name="sexe" value="F" checked="${utilisateurInstance?.sexe == "F"}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'dateNaissance', 'error')} ">
    <label for="dateNaissance">
        <g:message code="utilisateur.dateNaissance.label" default="Date Naissance"/>

    </label>
    <g:datePicker name="dateNaissance" precision="day" value="${utilisateurInstance?.dateNaissance}" default="none"
                  noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'photo', 'error')} ">
    <label for="photo">
        <g:message code="utilisateur.photo.label" default="Photo"/>

    </label>
    <g:textField name="photo" value="${utilisateurInstance?.photo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'password', 'error')} required">
    <label for="password">
        <g:message code="utilisateur.password.label" default="Password"/>
        <span class="required-indicator">*</span>
    </label>
    <g:passwordField name="password" required="" value="${utilisateurInstance?.password}"/>

</div>
