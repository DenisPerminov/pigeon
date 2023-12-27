<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
Регистрация нового пользователя
<#if Message??>
<h2 style="color: red">${Message}</h2>
</#if>
<@l.login "/registration" />
</@c.page>