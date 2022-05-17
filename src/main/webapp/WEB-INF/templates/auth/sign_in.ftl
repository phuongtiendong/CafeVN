<#include "../main-template.ftl"/>
<#include "../navbar.ftl"/>

<#macro content>
    <@navbar false "signin"/>
    <section class="testimonial px-8 py-5 align-content-center text-center" id="testimonial">
        <div class="container px-8 align-items-center align-content-center" style="width: 50%">
            <form action="/login/process" method="post">
                <img class="mb-4" src="/resources/images/logo.svg" alt="" width="100" height="100">
                <h1 class="h3 mb-3 fw-normal text-center">Вход</h1>

                <div class="form-floating">
                    <input id="login" name="login" placeholder="Логин" class="form-control"
                           type="text" required>
                    <label for="login">Логин</label>
                </div>
                <div class="form-floating">
                    <input id="password" name="password" placeholder="Пароль" class="form-control"
                           type="password" required>
                    <label for="password">Пароль</label>
                </div>

                <div class="checkbox mb-3 ">
                    <label>
                        <input type="checkbox" value="remember-me"> Запомнить меня
                    </label>
                </div>
                <button class="w-100 btn btn-lg btn-outline-success" type="submit">Вход</button>
            </form>
        </div>
    </section>

</#macro>
<@main title="Вход"/>
