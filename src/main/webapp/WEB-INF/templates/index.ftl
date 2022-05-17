<#include "main-template.ftl"/>
<#include "navbar.ftl"/>

<#macro content>
    <@navbar isAuth "main"/>
    <section class="testimonial px-8 py-5 align-content-center text-center" id="testimonial">
    <div class="cover-container d-flex h-100 p-5 mx-auto flex-column" >
        <main role="main" class="inner cover">
            <img src="https://media3.giphy.com/media/687qS11pXwjCM/giphy.gif">
            <hr>
            <h1 class="cover-heading">Кофейня с зерном собственной обжарки</h1>
            <p class="lead">Мы верим, что хороший кофе не должен быть дорогим. Каждую неделю мы радуем своих гостей исключительным и ароматным напитком собственной обжарки. Команда обжарщиков и бариста, настоящие профессионалы, призеры чемпионатов и турниров. Будьте уверенны, что ваш напиток в надежных руках. Независимо от того находитесь вы в одиночестве или с друзьями откройте для себя гостеприимство CooffeeShopVN.</p>
            <p class="lead">
                <a href="/shop/products" class="btn btn-lg btn-primary">Попробовать</a>
            </p>
        </main>
        <hr>
    </div>
        <div class="container">
            <!-- Example row of columns -->
            <div class="row">
                <div class="col-md-6 text-center">
                    <h2>Кофейные зерна</h2>
                    <img src="https://tailieufree.net/wp-content/uploads/2021/01/hinh-nen-hat-cafe-21.jpg" style="height: 270px;weight:480px ">
                    <p>Кофейные зерна содержат много мощных антиоксидантов, наиболее известным из которых является хлорогеновая кислота, семейство полезных для здоровья полифенолов. Исследования показывают, что хлорогеновая кислота может снизить риск развития диабета и бороться с воспалением. Некоторые испытания предполагают, что он также может обладать противораковыми свойствами.</p>
                </div>
                <div class="col-md-6 text-center">
                    <h2>Натуральный зеленый чай.</h2>
                    <img src="http://1.bp.blogspot.com/-LmYfNNmNmbw/U-3yqk4WaBI/AAAAAAABR9E/mghHvbNiKg0/s1600/tra_xanh.jpg" style="height: 270px;weight:480px ">
                    <p>
                        Зеленый чай – полезный напиток. Регулярное употребление зеленого чая поможет вам очистить организм и эффективно вывести токсины; Регулируют кровяное давление, хорошо для сердечно-сосудистой системы; Предотвратить злой рак; Снять стресс, усталость, улучшить работу мозга; Омолаживает, украшает кожу, помогает похудеть....</p>
                </div>
            </div>

            <hr>

        </div> <!-- /container -->
    </section>
</#macro>
<@main title="CooffeeShopVN"/>
