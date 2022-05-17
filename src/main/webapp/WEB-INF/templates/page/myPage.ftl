<#include "../main-template.ftl"/>
<#include "../navbar.ftl"/>

<#macro content>
    <@navbar isAuth "myPage"/>

    <div class="container py-4">
        <div class="main-body">

            <div class="row gutters-sm">
                <div class="col-md-4 mb-3">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex flex-column align-items-center text-center">
                                <img src="https://kolsvietnam.vn/admin/upload/default-avatar.png" alt="Admin"
                                     class="rounded-circle" width="150">
                                <div class="mt-3">
                                    <h4>${user.name} ${user.surname}</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="card mb-3">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">ФИО</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    ${user.name} ${user.surname} <#if user.patronymic??>${user.patronymic}</#if>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">Email</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <#if user.email??>${user.email}</#if>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">Телефон</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <#if user.phone??>${user.phone}</#if>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">Адрес</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <#if user.address??>${user.address}</#if>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-12">
                                    <a class="btn btn-outline-primary " target="__blank"
                                       href="/myPage/edit">
                                        <img src="/resources/images/edit.svg" width="18" height="18"
                                             class="d-inline-block align-items-center" alt="">
                                        Редактировать
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>
</#macro>
<@main title="Моя страница"/>
