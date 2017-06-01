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
    <g:else test="${flash.error}">
        <div class="alert alert-warning">
            <strong>Error!</strong> ${flash.error}
        </div>
    </g:else>
</div>

</body>


</html>