
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<header class="header">
    <div class="top-bar d-none d-sm-block">
        <div class="container-fluid">
            <div class="row d-flex align-items-center">
                <div class="col-sm-8 d-none d-sm-block">
                    <ul class="list-inline mb-0">
                        <li class="list-inline-item pr-3 mr-0">
                            <a href="#"  class="text-gray-900" target="_blank">
                                <i class="icofont-whatsapp"></i>
                                000 000 000
                            </a>
                        </li>
                        <li class="list-inline-item px-3 border-left d-none d-lg-inline-block d-xl-inline-block">Envío gratis en pedidos
                                superiores a S/ 300.00
                            </li>
                        <li class="list-inline-item px-3 border-left d-none d-lg-inline-block d-xl-inline-block">
                            Enviós a Lima de 3 a 5 días hábiles
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <nav class="navbar navbar-expand-lg bg-transparent navbar-light navbar-airy bg-fixed-white">
        <div class="container-fluid">
            <a class="navbar-brand" href="/proyectofinaljavaweb">
                <img src="/proyectofinaljavaweb/assets/img/logo.svg" width="180">
            </a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                    data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false"
                    aria-label="Toggle navigation"><i class="icofont-navigation-menu"></i></button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link active" id="homeDropdownMenuLink" href="/proyectofinaljavaweb">
                            Inicio<i class="fa fa-angle-down"></i>
                        </a>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="/proyectofinaljavaweb/Productos">Todos los
                            productos</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link " id="docsDropdownMenuLink" href="#" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">Categorías<i class="fa fa-angle-down"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="docsDropdownMenuLink">
                            <h6 class="dropdown-header font-weight-normal">Lista de categorías</h6>
                            <a class="dropdown-item" >Botas de vestir</a>
                        </div>
                    </li>
                </ul>
                <div class="d-flex align-items-center justify-content-between justify-content-lg-end mt-1 mb-2 my-lg-0">
                    <div class="nav-item navbar-icon-link" data-toggle="search">
                        <svg class="svg-icon">
                        <use xlink:href="/icons/orion-svg-sprite.svg#search-1"></use>
                        </svg>
                    </div>
                    <div id="listCartheader">
                    </div>
                </div>
            </div>
        </div>
    </nav>
</header>