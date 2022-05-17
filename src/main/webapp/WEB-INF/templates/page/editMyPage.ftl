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
                <div class="col-lg-8">
                    <div class="card">
                        <div class="card-body">
                            <form action="/myPage/edit" method="post">
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">ФИО</h6>
                                    </div>
                                    <div class="col-sm-3 text-secondary">
                                        <input id="name" name="name" type="text" class="form-control" placeholder="Имя"
                                               value="${user.name}" required>
                                    </div>
                                    <div class="col-sm-3 text-secondary">
                                        <input id="surname" name="surname" type="text" class="form-control"
                                               placeholder="Фамилия" value="${user.surname}" required>
                                    </div>
                                    <div class="col-sm-3 text-secondary">
                                        <input id="patronymic" name="patronymic" type="text" class="form-control"
                                               placeholder="Отчество"
                                               value="<#if user.patronymic??>${user.patronymic}</#if>">
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Email</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <input id="email" name="email" type="email" class="form-control"
                                               placeholder="example@example.ru"
                                               value="<#if user.email??>${user.email}</#if>">
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Телефон</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <input id="phone" name="phone" type="text" class="form-control"
                                               placeholder="+7 (000) 000-0000"
                                               value="<#if user.phone??>${user.phone}</#if>">
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Адресс</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <input id="address" name="address" type="text" class="form-control"
                                               placeholder="" value="<#if user.address??>${user.address}</#if>">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-9 text-secondary">
                                        <input type="submit" class="btn btn-outline-success px-4" value="Сохранить"/>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

</#macro>
<@main title="Моя страница"/>
