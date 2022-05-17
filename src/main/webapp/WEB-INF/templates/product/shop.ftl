<#include "../main-template.ftl"/>
<#include "../navbar.ftl"/>

<#macro content>
    <@navbar isAuth "shop"/>

    <div class="container-fluid mt-5 mb-5">
        <div class="row g-2">
            <div class="col-md-3">
                <div class="t-products p-2 px-1">
                    <h4 class="text-uppercase">Кактегории</h4>
                    <div class="list-group">
                        <a href="/shop/products"
                           class="list-group-item list-group-item-action <#if selectCategoryTag == "all">active</#if>">Все</a>
                        <#list categories as category>
                            <a href="/shop/products/${category.tag}"
                               class="list-group-item list-group-item-action <#if selectCategoryTag == category.tag>active</#if>">${category.name}</a>
                        </#list>
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="row g-2">

                    <#list products as product>
                        <div class="col-md-4">
                            <div class="card py-4 align-items-center">
                                <a href="/shop/product/${product.id}"><img class="card-img-top"
                                                                           src="/resources/products/product${product.id}.jpg"
                                                                           alt="product"
                                                                           style="width: 200px"></a>
                                <div class="card-body align-items-center text-center">
                                    <a href="/shop/product/${product.id}" class="card-title"
                                       style="text-decoration: none"><h5
                                                class="card-title">
                                            ${product.name}</h5></a>
                                    <a href="/shop/product/${product.id}" class="text-muted"
                                       style="text-decoration: none"><p
                                                class="card-text">
                                            ${product.price} ₽</p></a>
                                    <div class="row pt-3">
                                        <#if isAuth>
                                            <form class="col-3" method="post"
                                                  action="/shop/product/${product.id}/cart/add">
                                                <input id="id" name="id" value="${product.id}" hidden>
                                                <button class="btn btn-outline-light" type="submit">
                                                    <img src="/resources/images/add-to-cart.svg" width="20" height="20"
                                                         class="d-inline-block align-top" a lt="">
                                                </button>
                                            </form>
                                        </#if>
                                        <form class="<#if isAuth>col-6<#else>col-12</#if>" method="get"
                                              action="/shop/product/${product.id}">
                                            <button class="btn btn-outline-primary" type="submit" href="/${product.id}">
                                                Подробнее
                                            </button>
                                        </form>
                                        <#if isAuth>
                                            <form class="col-3" method="post"
                                                  action="/shop/product/${product.id}/favorite/add">
                                                <input id="id" name="id" value="${product.id}" hidden>
                                                <button class="btn btn-outline-light">
                                                    <img src="/resources/images/follow.svg" width="20" height="20"
                                                         class="d-inline-block align-top" alt="">
                                                </button>
                                            </form>
                                        </#if>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <#else>
                        <h4 class="p-5"> Ничего не найдено :( </h4>
                    </#list>

                </div>
            </div>
        </div>
    </div>

</#macro>
<@main title="Магазин"/>
