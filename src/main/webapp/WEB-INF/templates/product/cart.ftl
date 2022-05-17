<#include "../main-template.ftl"/>
<#include "../navbar.ftl"/>

<#macro content>
    <@navbar isAuth "shop"/>

    <div class="container-fluid mt-5 mb-5" >
        <div class="row g-2">
            <div class="col-md-9">
                <div class="row g-2">

                    <#list products as product>
                        <div class="col-md-4">
                            <div class="card py-4 align-items-center">
                                <a href="/shop/product/${product.id}"><img class="card-img-top"
                                                                           src="/resources/products/product${product.id}.jpg"
                                                                           style="width:200px;height: 150px"
                                                                           alt="product"></a>
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
                                            <form class="col-3" method="post" style="text-align: center"
                                                  action="/cart/${product.id}/remove">
                                                <input id="id" name="id" value="${product.id}" hidden>
                                                <button class="btn btn-outline-light" style="text-align: center" >
                                                    <img src="/resources/images/cancel.svg" width="20" height="20"
                                                         class="d-inline-block align-top" alt="">
                                                </button>
                                            </form>
                                        </#if>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <#else>
                            <h4 class="p-5"> Корзина пуста :( </h4>
                        </#list>
                    </ul>

                </div>
            </div>
        </div>
    </div>

</#macro>
<@main title="Магазин"/>
