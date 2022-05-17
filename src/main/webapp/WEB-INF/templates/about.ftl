<#include "main-template.ftl"/>
<#include "navbar.ftl"/>

<#macro content>
    <@navbar isAuth "about"/>
    <div class="jumbotron text-center py-5 px-3">
        <div class="container">
            <h1 class="display-3">Кофе для каждого!</h1>
            <p>Каждый день мы просыпаемся для того, чтобы дарить улыбки, получать от вас обратную связь и становится лучше. Мы увеличили выручку этого места и проект имеет очень большие перспективы.</p>
            <p><a class="btn btn-outline-primary btn-lg" href="/shop/products" role="button">Хочу </a></p>
        </div>
    </div>

    <div class="container">
        <!-- Example row of columns -->
        <div class="row">
            <div class="col-md-6 text-center">
                <h2>Почему мы?</h2>
                <img src="https://pdp.edu.vn/wp-content/uploads/2021/05/hinh-anh-cafe-dep.jpg" style="height: 270px;weight:480px " >
                <p>CooffeeShopVN — кофейня, созданная небольшой инициативной и молодой командой, которая пополняет свой штат с каждым годом. Мы готовы дать возможность каждому пришедшему в нашу команду научиться чему-то новому, освоить новую профессию или повысить свои навыки.
                    Основным приоритетом наших кофеен является максимальное удовлетворение, создание комфорта и доступности.</p>
            </div>
            <div class="col-md-6 text-center">
                <h2>Наши приоритеты.</h2>
                <img src="https://vietblend.vn/wp-content/uploads/2020/09/sai-lam-khi-pha-cafe-3.jpg" style="height: 270px;weight:480px ">
                <p>
                    Основной принцип выбора и создания блюд в меню — это вкус и качество продуктов. Мы берем достаточно известные и популярные блюда и готовим их с душой, используя качественные ингредиенты, именно поэтому наши гости чувствуют настоящий вкус еды.
                    Кроме классических вариантов кофе на основе эспрессо мы готовы предложить альтернативный способ заваривания: в кемексе, аэропрессе, пуровере.</p>
            </div>
        </div>

        <hr>

    </div> <!-- /container -->

</#macro>
<@main title="О нас"/>
