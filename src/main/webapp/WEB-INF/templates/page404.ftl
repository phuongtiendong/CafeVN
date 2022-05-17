<#include "main-template.ftl"/>
<#include "navbar.ftl"/>

<#macro content>
    <@navbar isAuth ""/>
    <div class="container px-4 py-4">
        <h1>404</h1>
        <br/>
        <h1 class="alert-danger">ERROR</h1>
    </div>

</#macro>
<@main title="Контакты"/>
