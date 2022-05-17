<#include "../main-template.ftl"/>
<#include "../navbar.ftl"/>

<#macro content>
    <@navbar isAuth "about"/>
    <div class="card mb-3" style="max-width: 70%;margin: 1% auto;float: none;margin-bottom: 10px;">
        <div class="row g-0">
            <div class="col-md-4">
                <img
                        src="/resources/products/product${product.id}.jpg"
                        alt="..."
                        class="img-fluid"
                        style="width: 200px"
                />
            </div>
            <div class="col-md-8">
                <div class="card-body">
                    <h2 class="card-title">${product.name}</h2>
                    <h5 class="card-text">
                        ${product.description}
                    </h5>
                    <h3 class="card-text">
                        <small class="text-muted">${product.price} ₽</small>
                    </h3>
                    <div class="row text-center align-bottom m-5">
                    <#if isAuth>
                        <form class="col-6" method="post"
                              action="/shop/product/${product.id}/cart/add">
                            <input id="id" name="id" value="${product.id}" hidden>
                            <button class="btn btn-outline-light" style="width: 100%" type="submit">
                                <img src="/resources/images/add-to-cart.svg" width="50" height="50"
                                     class="d-inline-block align-top" a lt="">
                            </button>
                        </form>
                    </#if>
                    <#if isAuth>
                        <form class="col-6" method="post"
                              action="/shop/product/${product.id}/favorite/add">
                            <input id="id" name="id" value="${product.id}" hidden>
                            <button class="btn btn-outline-light" style="width: 100%">
                                <img src="/resources/images/follow.svg" width="50" height="50"
                                     class="d-inline-block align-top" alt="">
                            </button>
                        </form>
                    </#if>
                </div>
            </div>
        </div>
    </div>
</#macro>
<@main title="О нас"/>