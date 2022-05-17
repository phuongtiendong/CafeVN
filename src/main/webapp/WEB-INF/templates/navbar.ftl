<#macro navbar isAuth pageName>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid px-2">
            <a class="navbar-brand" href="/">
                <img src="/resources/images/logo.svg" width="30" height="30"
                     class="d-inline-block align-top" alt="">
                CooffeeShopVN
            </a>
            <div class="collapse navbar-collapse px-3" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link <#if pageName == "main">active</#if>" aria-current="page"
                           href="/">Главная</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <#if pageName == "shop">active</#if>" href="/shop/products">Магазин</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <#if pageName == "about">active</#if>" href="/about">О нас</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <#if pageName == "contact">active</#if>" href="/contact">Контакты</a>
                    </li>
                </ul>
                <#if isAuth == true>

                            <a class="px-2" href="/cart">
                                <img src="/resources/images/add-to-cart.svg" width="20" height="20"
                                     class="d-inline-block align-top" a lt="">
                            </a>

                            <a class="px-2" href="/favorite">
                                <img src="/resources/images/follow.svg" width="20" height="20"
                                     class="d-inline-block align-top" alt="">
                            </a>

                    <form class="d-flex px-1" action="/myPage">
                        <button class="btn btn-outline-light <#if pageName == "myPage">active</#if>" type="submit">
                            <img src="/resources/images/user.svg" width="20" height="20"
                                 class="d-inline-block align-content-center" alt="">
                            Профиль
                        </button>
                    </form>
                    <form class="d-flex px-1" action="/logout">
                        <button class="btn btn-outline-danger" type="submit">
                            <img src="/resources/images/log-out.svg" width="20" height="20"
                                 class="d-inline-block align-content-center" alt="">
                        </button>
                    </form>
                <#else>
                    <form class="d-flex px-1" action="/login">
                        <button class="btn btn-outline-light <#if pageName == "signin">active</#if>" type="submit">
                            Вход
                        </button>
                    </form>
                    <form class="d-flex px-1" action="/signup" method="get">
                        <button class="btn btn-outline-light <#if pageName == "signup">active</#if>" type="submit">
                            <img src="/resources/images/add-user.svg" width="20" height="20"
                                 class="d-inline-block align-content-center" alt="">
                            Регистрация
                        </button>
                    </form>
                </#if>

            </div>
        </div>
    </nav>
</#macro>
