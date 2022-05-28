

<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Beans.MProductos"%>
<%@page import="java.util.ArrayList"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <link href="/proyectofinaljavaweb/assets/css/app.css" type="text/css" rel="stylesheet" />
        <link rel="preconnect" href="https://fonts.gstatic.com">    
        <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="/header/header.jsp" />  
        <section class="hero">
            <div class="container">
                <div class="hero-content pb-5 text-center">
                    <div class="col-md-9 mt-9">
                        <div class="breadcrumb-form container-filter">
                            <div class="filter-key">
                            </div>

                        </div>
                    </div>

                    <h1 class="mb-3">
                        <font style="vertical-align: inherit;">
                        <font style="vertical-align: inherit;">Todos los productos</font>
                        </font>
                    </h1>


                </div>

            </div>

        </section>
        <div class="container">
            <div class="row">

                <div class="products-grid order-lg-2 col-lg-12 col-xl-12">
                    <div class="row">
                        <%
                            ArrayList<MProductos> lista = (ArrayList<MProductos>) request.getAttribute("c_lista");
                            for (int i = 0; i < lista.size(); i++) {
                                MProductos c = lista.get(i);
                        %>

                        <div class="col-sm-6 col-xl-4 col-6">
                            <div class="product">
                                <div class="product-image">
                                    <div class="ribbon ribbon-primary">DISPONIBLE</div>
                                    <div style="display: block; overflow: hidden; position: relative; box-sizing: border-box; margin: 0px;">
                                        <div style="display: block; box-sizing: border-box; padding-top: 150%;"></div>
                                        <img alt="Camiseta blanca" 
                                             src="storage/<%=c.getImagenes()%>" decoding="async" class="img-fluid" style="visibility: inherit; position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;">
                                    </div>
                                    <div class="product-hover-overlay">
                                        <a class="product-hover-overlay-link" href="Productos?detalle=<%=c.getID()%>"></a>
                                        <div class="product-hover-overlay-buttons">

                                            <a class="btn btn-dark btn-buy" href="Productos?detalle=<%=c.getID()%>">
                                                <i class="icofont-ui-search"></i>
                                                <span class="btn-buy-label ml-2">Ver</span>
                                            </a>

                                        </div>
                                    </div>
                                </div>
                                <div class="py-2">
                                    <p class="text-muted text-sm mb-1">
                                        <font style="vertical-align: inherit;">
                                        <font style="vertical-align: inherit;"><%=c.getCategoria()%></font>
                                        </font>
                                    </p>
                                    <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="Productos?detalle=<%=c.getID()%>">
                                            <font style="vertical-align: inherit;">
                                            <font style="vertical-align: inherit;"><%=c.getTitulo()%></font>
                                            </font>
                                        </a>
                                    </h3><span class="text-muted">
                                        <font style="vertical-align: inherit;">
                                        <font style="vertical-align: inherit;">S/ </font>
                                        </font>
                                        <font style="vertical-align: inherit;">
                                        <font style="vertical-align: inherit;"><%=c.getPrecio()%>
                                        </font>
                                        </font>
                                    </span>
                                </div>
                            </div>
                        </div>


                        <%
                            }
                        %>
                    </div>



                </div>

            </div>
        </div>
        <jsp:include page="/footer/footer.jsp" />  
    </body>
</html>
