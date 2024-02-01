<#macro login url isRegisterForm>
    <form action="${url}" method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Имя пользователя :</label>
            <div class="col-sm-6">
                <input type="text" name="username" class="form-control" placeholder="Имя пользователя"/>
            </div>
        </div>
        <div class="form-group row mt-2">
            <label class="col-sm-2 col-form-label">Пароль :</label>
            <div class="col-sm-6">
                <input type="text" name="password" class="form-control" placeholder="Пароль"/>
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <div class="text-center mt-2">
            <#if !isRegisterForm><a href="/registration">Зарегистрироваться</a></#if>
            <button class="btn btn-primary ms-2" type="submit"><#if isRegisterForm>Создать учетную запись<#else>Войти</#if></button>
        </div>

    </form>
</#macro>

<#macro logout>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button class="btn btn-primary" type="submit">Выйти</button>
</form>
</#macro>