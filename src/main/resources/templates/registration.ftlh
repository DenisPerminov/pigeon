<html>
    <head>
        <title>Pigeon</title>
    </head>
    <body>
        <#if Message??>
        <h2 style="color: red">${Message}</h2>
        </#if>
        <form action="/registration" method="post">
            <div><label> User Name : <input type="text" name="username"/> </label></div>
            <div><label> Password: <input type="password" name="password"/> </label></div>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <div><input type="submit" value="Зарегистрироваться"/></div>
        </form>
    </body>
</html>