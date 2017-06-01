<html>
<head>
    <meta name="layout" content="main">
</head>

<body>

    <div id="login">
        <g:if test="${flash.success}">
            <div class="alert alert-success">
                <strong>Success!</strong> ${flash.success}
            </div>
        </g:if>
        <g:elseif test="${flash.error}">
            <div class="alert alert-warning">
                <strong>Error!</strong> ${flash.error}
            </div>
        </g:elseif>
        <g:else test="${utilisateur}">
            <h1>Signed in as <b>${utilisateur.email}</b></h1>
            <g:link controller="utilisateur" action="logout">Logout ?</g:link>
        </g:else>
    </div>

</body>


</html>