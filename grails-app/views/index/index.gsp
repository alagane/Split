<!DOCTYPE html>
<html lang="en">

<head>
	<meta name="layout" content="main"/>
</head>

<body>
    <div>
        <g:if test="${utilisateur}">
            <h1>Signed in as <b>${utilisateur.email}</b></h1>
            <g:link controller="utilisateur" action="logout">Logout ?</g:link>
        </g:if>
        <g:else>
            <h1>Sign in</h1>
            <g:form controller="utilisateur" action="login" class="form-inline">
                <input type="text" name="email" class="form-control mb-2 mr-sm-2 mb-sm-0" id="inlineFormInput" placeholder="Mail">
                <input type="password" name="password" class="form-control mb-2 mr-sm-2 mb-sm-0" id="inlineFormInputGroup" placeholder="Password">
                <button type="submit" class="btn btn-primary">Submit</button>
            </g:form>
            <br>
            <h1>Sign up</h1>
            <g:form controller="utilisateur" action="create" class="form-inline">
                <button type="submit" class="btn btn-info">Create an account</button>
            </g:form>
        </g:else>
    </div>

</body>

</html>
