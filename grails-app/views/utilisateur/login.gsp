<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'utilisateur.label', default: 'Utilisateur')}" />
    <title><g:message code="default.login.label" args="[entityName]" /></title>
</head>

<body>

    <div id="login">
        <g:if test="${session.user}">
            <g:if test="${flash.message}">Welcome back ${flash.message}</g:if>
            <g:else>Logged in as <B>${session.user}</B></g:else>
            <g:link controller="utilisateur" action="logout">Logout</g:link>
        </g:if>
    </div>

</body>


</html>