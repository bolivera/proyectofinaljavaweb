<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%
    String usuario = "";
    String perfil = "";
    HttpSession sesionOk = request.getSession();
    if (sesionOk.getAttribute("nombre") == null) {
%>
<jsp:forward page="index.jsp">
    <jsp:param name="msg" value="Debe iniciar sesión para acceder al panel"/>
</jsp:forward>
<%
    } else {
        usuario = (String) sesionOk.getAttribute("nombre");
        perfil = (String) sesionOk.getAttribute("perfil");
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Domiman</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <!-- Option 1: Bootstrap Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="home.jsp">DOMIMAN</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarScroll">
                    <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">

                    </ul>
                    <span class="navbar-text">
                        Usuario: <b><%=usuario%></b> | Perfil: <%=perfil%>&nbsp&nbsp
                        <a href="ServletLogin?op=cerrar"><button class="btn btn-danger">Cerrar sesión</button></a>
                    </span>
                </div>
            </div>
        </nav>