<#include "../main-template.ftl"/>
<#include "../navbar.ftl"/>

<#macro content>
    <@navbar false "signup"/>
    <section class="testimonial px-8 py-5 align-content-center text-center" id="testimonial">
        <div class="container px-8 align-items-center align-content-center" style="width: 50%">
            <form action="/signup" method="post" modelAttribute="user">
                <img class="mb-4" src="/resources/images/logo.svg" alt="" width="100" height="100">
                <h1 class="h3 mb-3 fw-normal text-center">Регистрация</h1>

                <div class="form-floating">
                    <input id="login" name="name" placeholder="name" placeholder="Имя" class="form-control"
                           type="text" required>
                    <label for="name">Имя</label>
                </div>
                <div class="form-floating">
                    <input id="surname" name="surname" placeholder="Фамилия" class="form-control"
                           type="text" required>
                    <label for="surname">Фамилия</label>
                </div>
                <div class="form-floating">
                    <input id="login" name="login" placeholder="Логин" class="form-control"
                           type="text" required>
                    <label for="login">Логин</label>
                </div>
                <div class="form-floating">
                    <input id="password" name="password" placeholder="Пароль" class="form-control"
                           type="password" required>
                    <label for="login">Пароль</label>
                </div>

                <div class="checkbox mb-3 ">
                    <label>
                        <input type="checkbox" value="remember-me" required> Политика конфеденциальности
                    </label>
                </div>
                <button class="w-100 btn btn-lg btn-outline-primary" type="submit">Вход</button>
            </form>
        </div>
    </section>

</#macro>
<@main title="Регистрация"/>
