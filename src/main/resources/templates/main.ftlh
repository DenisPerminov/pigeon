<html>

<head>
    <title>Pigeon</title>
</head>

<body>
<div>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
         <input type="submit" value="Выйти"/>
    </form>
</div>

<div>
    <form method="post">
        <input type="text" name="text" placeholder="Введите сообщение" />
        <input type="text" name="tag" placeholder="Tag" />
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Добавить</button>
    </form>
</div>
<div>Список сообщений</div>
<form method="post" action="filter">
    <input type="text" name="tag"/>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button type="submit">Найти</button>
</form>
<#list messages as message>
<div>
    <b>${message.id}</b>
    <span>${message.text}</span>
    <i>${message.tag}</i>
    <strong>${message.authorName}</strong>
</div>
</#list>
</body>
</html>