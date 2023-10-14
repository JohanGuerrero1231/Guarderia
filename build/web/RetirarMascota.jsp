<%-- 
    Document   : RetirarMascota
    Created on : 11/10/2023, 6:37:00 p. m.
    Author     : johan
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="clasess.Mascota" %>
<%@ page import="clasess.GestorMascotas" %>

<%
    GestorMascotas gestorMascotas = new GestorMascotas();
    ArrayList<Mascota> mascotas = new ArrayList<Mascota>();
    mascotas.addAll(gestorMascotas.getMascotas());
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Retirar Mascota</title>
    </head>
    <body>
        <h2>Retirar Mascota</h2>
        <form action="ConsultarMascotas.jsp" method="post">
            <link rel="stylesheet" type="text/css" href="EstiloC.css">
            Seleccione la mascota a retirar:
            <select name="mascota">
                <% for (Mascota mascota : mascotas) { %>
                <option value="<%= mascota.getNombre() %>"><%= mascota.getNombre() %></option>
                <% } %>
            </select><br>
            <input type="submit" value="Retirar Mascota">
        </form>
        <a href="index.html">Volver</a>
    </body>
</html>



