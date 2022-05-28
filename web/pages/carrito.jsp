

<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="com.mysql.jdbc.ResultSet"%>
<%@page import="Utils.ConexionDB"%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Beans.MProductos"%>
<%@page import="java.util.ArrayList"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalle</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=2.5">
        <link href="/proyectofinaljavaweb/assets/css/app.css" type="text/css" rel="stylesheet" />
        <link rel="preconnect" href="https://fonts.gstatic.com">    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    </head>
    <body>
        <main>
            <jsp:include page="/header/header.jsp" />  

            <section class="hero">
                <div class="container">
                    <nav class="" aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center no-border mb-0">
                            <li class="breadcrumb-item"><a class="" href="/">Inicio</a></li>
                            <li class="active breadcrumb-item" aria-current="page"><span class="">Carrito de compras</span>
                            </li>
                        </ol>
                    </nav>
                    <div class="hero-content pb-5 text-center">
                        <h1 class="mb-5">Carrito de compras</h1>
                    </div>
                </div>
            </section>
            <div class="container">
                <div class="mb-5 row">
                    <div class="col-lg-8">

                        <ul class="custom-nav nav nav-pills mb-5">

                            <li class="nav-item w-25">
                                <a class="nav-link text-sm active">
                                    <font style="vertical-align: inherit;">
                                    <font style="vertical-align: inherit;">Datos</font>
                                    </font>
                                </a>
                            </li>
                            <li class="nav-item w-25">
                                <a class="nav-link text-sm">
                                    <font style="vertical-align: inherit;">
                                    <font style="vertical-align: inherit;">Pago</font>
                                    </font>
                                </a>
                            </li>
                            <li class="nav-item w-25">
                                <a class="nav-link text-sm">
                                    <font style="vertical-align: inherit;">
                                    <font style="vertical-align: inherit;">Fín</font>
                                    </font>
                                </a>
                            </li>
                        </ul>
                        <form class="tab-content" id="form-checkout" method="post" action="realizar-pago"> 
                            <div class="collapse show" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="mb-4">
                                    <font style="vertical-align: inherit;">
                                    <font style="vertical-align: inherit;">Dirección de envío</font>
                                    </font>
                                </h3>
                                <div class="row">
                                    <div class="col-md-6 form-group">
                                        <label for="fullname_invoice"  class="form-label">
                                            <font style="vertical-align: inherit;">
                                            <font style="vertical-align: inherit;">Nombre</font>
                                            </font>
                                        </label>
                                        <input name="fullname_invoice"  id="nombres" type="text" required class="form-control" >
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <label for="lastName_invoice"  class="form-label">
                                            <font style="vertical-align: inherit;">
                                            <font style="vertical-align: inherit;">Apellidos completos</font>
                                            </font>
                                        </label>
                                        <input name="lastName_invoice"  id="apellidos" type="text" required class="form-control" >
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <label for="emailaddress_invoice"  class="form-label">
                                            <font style="vertical-align: inherit;">
                                            <font style="vertical-align: inherit;">Correo electrónico</font>
                                            </font>
                                        </label>
                                        <input name="emailaddress_invoice"  id="email" type="email"
                                               class="form-control"  required>
                                    </div>

                                    <div class="col-md-6 form-group">
                                        <label for="street_invoice" class="form-label">
                                            <font style="vertical-align: inherit;">
                                            <font style="vertical-align: inherit;">Dirección / Referencias</font>
                                            </font>
                                        </label>
                                        <input name="street_invoice" id="direccion" type="text" class="form-control" 
                                               required>
                                    </div>

                                    <div class="col-md-6 form-group">
                                        <label for="city_invoice" class="form-label">
                                            <font style="vertical-align: inherit;">
                                            <font style="vertical-align: inherit;">Provincia</font>
                                            </font>
                                        </label>
                                        <select id="provincia" class="form-control" required name="provincia">
                                            <option selected>[Seleccionar]

                                        </select>
                                    </div>

                                    <div class="col-md-6 form-group">
                                        <label for="city_invoice" class="form-label">
                                            <font style="vertical-align: inherit;">
                                            <font style="vertical-align: inherit;">Distrito</font>
                                            </font>
                                        </label>
                                        <select id="distrito" class="form-control" required name="distrito">
                                            <option selected>[Seleccionar]

                                            <option value="01"></option>

                                        </select>
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <label for="phonenumber_invoice" class="form-label">
                                            <font style="vertical-align: inherit;">
                                            <font style="vertical-align: inherit;">Número de teléfono</font>
                                            </font>
                                        </label>

                                        <input name="phonenumber_invoice" 
                                               id="telefono"  class="form-control" type="number" min="1"  pattern="[0-9]{5,9}" required>
                                    </div>

                                    <div class="col-md-6 form-group align-self-end ">
                                        <label for="phonenumber_invoice" class="form-label">
                                            <font style="vertical-align: inherit;">
                                            <font style="vertical-align: inherit;">Legal</font>
                                            </font>
                                        </label>
                                        <div class="mb-1 mt-1">
                                            <!-- <input type="checkbox" class="custom-control-input" name="check" id="check"> -->
                                            <div class="row">
                                                <div class="col-9">
                                                    <div class="custom-control custom-checkbox">
                                                        <input class="custom-control-input" id="check" type="checkbox" name="check" >
                                                        <label class="custom-control-label" for="check">
                                                            Acepto los terminos y condiciones
                                                        </label>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="my-5 d-flex justify-content-between flex-column flex-lg-row">
                                <button typeof="button" class="btn btn-dark" id="checkout-btn">
                                    Realizar compra
                                    <i class="mt-2 icofont-simple-right"></i>
                                </button>
                            </div>
                        </form> 
                    </div>

                    <div class="col-lg-4">
                        <div class="block mb-5">
                            <div class="block-header">
                                <h6 class="text-uppercase mb-0">Resumen de tu orden</h6>
                            </div>
                            <div class="block-body bg-light pt-1">
                                <p class="text-sm">Los costos de envío y adicionales se
                                    calculan en función de los productos que agregó</p>
                                <ul class="order-summary mb-0 list-unstyled">
                                    <li class="order-summary-item" id="unit-price">
                                        <span>Subtotal </span>
                                        <strong>S/.<span id="quantity">250.00</span></strong>
                                    </li>

                                    <li class="order-summary-item" id="envioDeliverys">
                                        <span>Costo de envio</span>
                                        <strong>S/.<span id="envioDelivery">0.00</span></strong>
                                    </li> 

                                    <li class="order-summary-item border-0" id="product-description">
                                        <span>Total a pagar</span>
                                        <strong class="order-summary-total">S/.<span id="quantity-total">250.00</span></strong>
                                    </li>
                                </ul>
                                <div class=" d-flex align-items-center text-left text-md-center row mt-4">
                                    <div class="col-12 col-md-4">
                                        <i class="icofont-unlock icofont-2x"></i><br>
                                        <small>Pago Seguro</small>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <i class="icofont-refresh icofont-2x"></i><br>
                                        <small>Cambios</small>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <i class="icofont-simple-smile icofont-2x"></i><br>
                                        <small>Clientes felices</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </main>
        <jsp:include page="/footer/footer.jsp" />  
    </body>
</html>
