<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="cl.desafiolatam.util.FactorialUtil, cl.desafiolatam.util.ParidadUtil"%>
<%
FactorialUtil factorialUtil = new FactorialUtil();
ParidadUtil paridadUtil = new ParidadUtil();
%>
<!doctype html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Proyecto Demo - Desafio JSP</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h1>Actividad JSP - Academia Desafío JSP</h1>
        <div class="row">
            <div class="col-12 col-sm-12">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Número</th>
                            <th scope="col">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        for (int i = 1; i <= 10; i++) {
                        %>
                        <tr>
                            <th scope="row"><%= i %></th>
                            <td><%= i %></td>
                            <td>
                                <a href="FactorialServlet?num=<%= i %>">Ver Factorial</a>
                                |
                                <a href="ParidadServlet?num=<%= i %>">Ver Paridad</a>
                            </td>
                        </tr>
                        <%
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

