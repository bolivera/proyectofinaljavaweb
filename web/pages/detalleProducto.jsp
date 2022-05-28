

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
        <link href="/proyectofinaljavaweb/assets/css/app.css" type="text/css" rel="stylesheet" />
        <link rel="preconnect" href="https://fonts.gstatic.com">    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="/header/header.jsp" />  
        <main>

            <%
                ArrayList<MProductos> lista = (ArrayList<MProductos>) request.getAttribute("c_detalle");
                for (int i = 0; i < lista.size(); i++) {
                    MProductos c = lista.get(i);
            %>

            <section class="product-details page-product">
                <div class="container">
                    <div class="row">
                        <div class="pt-4 col-12 order-1 col-lg-7 order-lg-1">
                            <div class="row">
                                <div class="detail-carousel order-md-2 col-12 col-md-10">
                                    <div class="ribbon ribbon-primary">DISPONIBLE</div>
                                    <div class="swiper-container">
                                        <div class="swiper-wrapper img-magnifier-container">
                                            <div class="large"></div>

                                            <div class="swiper-slide">
                                                <div class="img-fluid " style="width:100%;height:auto;overflow:hidden"><img
                                                        class="magnifier-image small" id="img"
                                                        data-toggle="magnify" src="storage/<%=c.getImagenes()%>" width="100%"
                                                        height="100%" alt="Modern Jacket 1" />
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="pl-lg-4 col-12 order-2 col-lg-5 order-lg-2">
                            <nav class="" aria-label="breadcrumb">
                                <ol class="breadcrumb no-border mb-0 pb-0">
                                    <li class="active breadcrumb-item " aria-current="page"><span class=""><a
                                                href="#"><%=c.getCategoria()%></a></span>
                                    </li>
                                </ol>
                            </nav>
                            <h1 class="mb-4 mt-3"><%=c.getTitulo()%></h1>
                            <div class="d-flex flex-column flex-sm-row align-items-sm-center justify-content-sm-between mb-4">
                                <ul class="list-inline mb-2 mb-sm-0">
                                    <li class="list-inline-item h4 font-weight-bold mb-0 jsx-3736277290">
                                        S/. <%=c.getPrecio()%> (Oferta)
                                    </li>
                                    <li class="list-inline-item text-muted font-weight-light"> 
                                        <del>S/ <%=c.getPrecio() + c.getPrecio() * 0.20%> </del>
                                    </li>
                                </ul>

                            </div>
                            <p class="mb-4 text-muted"><%=c.getDescripcion()%> </p>
                            <form class="">
                                <div class="row">
                                    <div class="detail-option mb-4 col-sm-12 col-lg-12 col-xl-12">
                                        <h6 class="detail-option-heading">Selecciona Talla </h6>
                                        <p class="text-muted font-weight-light text-sm ">
                                            <span role="button" tabindex="0" data-toggle="modal" data-target="#tallas"
                                                  class="jsx-1736324396 sizechart-link fa--size-chart-link"><i
                                                    class="jsx-1736324396 talla-pie">
                                                </i>
                                            </span>
                                        </p>

                                        <%
                                            String[] t = c.getTallas().split("\\|");
                                            for (int idx = 0; idx < t.length; idx++) {
                                        %> 

                                        <span class="">
                                            <label for="tallas__<%=t[idx]%>"
                                                   class="option size-button btn btn-sm btn-outline-secondary detail-option-btn-label mr-2 "><%=t[idx]%>
                                                <input type="radio" name="talla" id="tallas__<%=t[idx]%>"
                                                       value="<%=t[idx]%>"
                                                       class="input-invisible form-check-input checkbox-radio" />
                                            </label>
                                        </span>

                                        <%
                                            }
                                        %>
                                    </div>

                                    <div class="detail-option  col-12 col-lg-6 mb-3">
                                        <!-- <label class="detail-option-heading font-weight-bold hiden">Cantidad</label> -->
                                        <input type="hidden" id="unidades" class="form-control detail-quantity" name="unidades"
                                               value="1" min="1" pattern="^[0-9]+" />
                                    </div>
                                </div>
                                <ul class="list-inline mb-3">
                                    <li class="list-inline-item">
                                        <button type="button" class="mb-1 btn btn-dark rounded-3 add-cart"
                                                data-id="{{$producto->id}}"><i class="icofont-ui-cart icofont-lg"></i>
                                            Agregar al carrito
                                        </button>
                                    </li>
                                    <li class="list-inline-item"></li>
                                </ul>

                            </form>

                        </div>
                    </div>
                </div>
            </section>

            <%
                }
            %>
        </main>
        <jsp:include page="/footer/footer.jsp" />  
    </body>
</html>
