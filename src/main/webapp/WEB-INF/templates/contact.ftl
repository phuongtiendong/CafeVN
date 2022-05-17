<#include "main-template.ftl"/>
<#include "navbar.ftl"/>

<#macro content>
    <@navbar isAuth "contact"/>
    <section class="testimonial px-8 py-5 align-content-center text-center" id="testimonial">
        <div class="container">
            <h1 class="text-center text-uppercase">Наши контакты</h1>
            <p class="text-center w-75 m-auto">Мы расположились в самом центре прекрасной столицы. Мы работаем с 9:00 до 22:00 без праздников и выходных. Ждем вашего визита </p>

            <img src="https://i.pinimg.com/736x/1b/2f/3b/1b2f3b6e76ce850312de20d045c019e2.jpg">
            <hr>
            <div class="row">
                <div class="col-sm-12 col-md-6 col-lg-3 my-5">
                    <div class="card border-0">
                        <div class="card-body text-center">
                            <img class="mb-4" src="/resources/images/phone-call.svg" alt="" width="100" height="100">
                            <h4 class="text-uppercase mb-5">Телефон</h4>
                            <p>+7 (915) 332 65-78<br>+7 (915) 332 65-78</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-6 col-lg-3 my-5">
                    <div class="card border-0">
                        <div class="card-body text-center">
                            <img class="mb-4" src="/resources/images/home.svg" alt="" width="100" height="100">
                            <h4 class="text-uppercase mb-5">Адрес</h4>
                            <address>11-я Парковая улица, дом 36</address>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-6 col-lg-3 my-5">
                    <div class="card border-0">
                        <div class="card-body text-center">
                            <img class="mb-4" src="/resources/images/moscow-metro-logo.svg" alt="" width="100" height="100">
                            <h4 class="text-uppercase mb-5">Метро</h4>
                            <address>М. Первомайская</address>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-6 col-lg-3 my-5">
                    <div class="card border-0">
                        <div class="card-body text-center">
                            <img class="mb-4" src="/resources/images/email.svg" alt="" width="100" height="100">
                            <h4 class="text-uppercase mb-5">email</h4>
                            <p>cooffeeVN@mail.ru</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</#macro>
<@main title="Контакты"/>
