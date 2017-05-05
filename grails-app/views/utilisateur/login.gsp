<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'utilisateur.label', default: 'Utilisateur')}" />
    <title><g:message code="default.login.label" args="[entityName]" /></title>
</head>

<body>

    <div id="login">
        <g:if test="${session.user}">
            Logged in as <B>${session.nom}</B>
            <g:link controller="utilisateur" action="logout">Logout</g:link>
        </g:if>
    </div>

</body>


</html>