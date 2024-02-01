<#import "parts/common.ftlh" as c>
<@c.page>
<div class="form-row">
    <form method="get" action="/main" class="form-inline">
        <input type="text" name="filter" value="${filter?ifExists}" placeholder="Введите тэг для поиска"/>
        <button type="submit" class="btn btn-primary ms-2">Найти</button>
    </form>
</div>

<a class="btn btn-primary mt-2" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Добавить сообщение
</a>
<div class="collapse mt-2 mb-2" id="collapseExample">
    <form method="post" action="/main" enctype="multipart/form-data">
        <input type="text" name="text" placeholder="Введите сообщение" />
        <input type="text" name="tag" placeholder="Тэг" />
        <input type="file" name="file">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit" class="btn btn-primary">Добавить</button>
    </form>
</div>

<div class="card-group">
    <#list messages as message>
    <div class="card mt-3">
        <div class="card-footer text-muted">
            ${message.authorName}
        </div>
        <div class="m-2">
            <i>${message.tag}</i>
            <span>${message.text}</span>
        </div>
        <#if message.filename??>
        <img src="/img/${message.filename}" class="card-img-top">
        </#if>
    </div>
    <#else>
    Нет сообщений
    </#list>
</div>

</@c.page>