<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
Добро пожаловать!
<@l.login "/login" />
    <a href="/registration">Зарегистрироваться</a>
</@c.page>