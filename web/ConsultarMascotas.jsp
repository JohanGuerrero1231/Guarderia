<%-- 
    Document   : ConsultarMascotas
    Created on : 11/10/2023, 6:36:04 p. m.
    Author     : johan
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="clasess.Mascota" %>

<!DOCTYPE
    <html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="EstiloB.css">
    <title>Lista</title>
</head>
<body>
    <% String animal = request.getParameter("animal"); %>
    <% String nombre = request.getParameter("nombre"); %>
    <% String raza = request.getParameter("raza"); %>
    <% String color = request.getParameter("color"); %>
    <% int edad = Integer.parseInt(request.getParameter("edad")); %>
    <% int entrenamiento = Integer.parseInt(request.getParameter("entrenamiento")); %>
    <% String toxoplasmosis = request.getParameter("toxoplasmosis"); %>
    <%
        ArrayList<String> lista = (ArrayList<String>) application.getAttribute("miArrayList");
        if (lista == null) {
            lista = new ArrayList<String>();
            application.setAttribute("miArrayList", lista);
        }
    %>
    
    <% lista.add("Animal: " + animal + "\nNombre: " + nombre + "\nRaza: " + raza + "\nColor: " + color + "\nEdad: " + edad + "\nEntrenamiento: " + entrenamiento + "\nToxoplasmosis: " + toxoplasmosis); %>
    <% application.setAttribute("miArrayList", lista);%>
    <h1>Mascotas:</h1>
    <ul>
        <% for (String item : lista) {%>
        <li><%= item%></li>
            <% }%>
    </ul>
    <a href="index.html">Volver a Inicio</a>
</body>
</html>





