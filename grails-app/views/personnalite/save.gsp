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

        <%@ page import="split.Personnalite" %>
        <h1>List of personnality</h1>
        <div class="row">

            <table class="table table-striped">
                <thead>
                <tr>
                <th><g:sortableColumn property="surnom" title="${message(code: 'personnalite.surnom.label', default: 'Surnom')}" /></th>
                <th> <g:sortableColumn property="description" title="${message(code: 'personnalite.description.label', default: 'Description')}" /></th>
                <th> <g:sortableColumn property="utilisateur" title="${message(code: 'personnalite.utilisateur.label', default: 'Utilisateur')}" /></th>
                </tr>
                </thead>
                <tbody>
                <g:each var="personnaliteInstance" in="${personnaliteInstanceList}" status="i">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td>${fieldValue(bean: personnaliteInstance, field: "surnom")}</td>
                        <td>${fieldValue(bean: personnaliteInstance, field: "description")}</td>
                        <td>${fieldValue(bean: personnaliteInstance, field: "utilisateur")}</td>

                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
    </g:if>
    <g:else test="${flash.error}">
        <div class="alert alert-warning">
            <strong>Error!</strong> ${flash.error}
        </div>
    </g:else>
</div>

</body>


</html>