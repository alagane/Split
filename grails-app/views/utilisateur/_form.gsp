<%@ page import="split.Utilisateur" %>

<div class="row">
    <div class="col-xs-6 col-sm-6 col-md-6">
        <div class="form-group fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'nom', 'error')} required">
            <input type="text" name="nom" required="" value="${utilisateurInstance?.nom}" class="form-control input-lg" placeholder="Last Name" tabindex="1">
        </div>
    </div>
    <div class="col-xs-6 col-sm-6 col-md-6">
        <div class="form-group fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'prenom', 'error')} required">
            <input type="text" name="prenom" required="" value="${utilisateurInstance?.prenom}" class="form-control input-lg" placeholder="First Name" tabindex="2">
        </div>
    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'email', 'error')} required">
    <input type="email" name="email" required="" value="${utilisateurInstance?.email}" class="form-control input-lg" placeholder="Email" tabindex="3">
</div>
<div class="form-group fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'sexe', 'error')} required">
    <input type="text" name="sexe" required="" value="${utilisateurInstance?.sexe}" class="form-control input-lg" placeholder="Sexe" tabindex="4">
</div>

<div class="form-group fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'dateNaissance', 'error')} ">
    <label for="dateNaissance">
        <g:message default="Bday" />
    </label>
    <g:datePicker class="form-control input-lg" placeholder="Birth Date" tabindex="5" name="dateNaissance" precision="day"  value="${utilisateurInstance?.dateNaissance}" default="none" noSelection="['': '']" />
</div>

<div class="form-group fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'photo', 'error')} required">
    <input type="text" name="photo" value="${utilisateurInstance?.photo}" class="form-control input-lg" placeholder="Photo url" tabindex="6">
</div>
<div class="form-group fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'password', 'error')} required">
    <input type="password" name="password" required="" value="${utilisateurInstance?.password}" class="form-control input-lg" placeholder="Password" tabindex="7">
</div>
