<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
<div class="mb-1">Регистрация нового пользователя</div>
<#if Message??>
<h2 style="color: red">${Message}</h2>
</#if>
<@l.login "/registration" true/>
</@c.page>