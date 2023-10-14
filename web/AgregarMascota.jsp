<%-- 
    Document   : AgregarMascota
    Created on : 11/10/2023, 6:35:28 p. m.
    Author     : johan
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Registro</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="EstiloA.css">
    </head>
    <body>
    <center>
        <p>Registro de Animal</p>
        <center>
            <form action="ConsultarMascotas.jsp" method="post">
                <label for="animal">Seleccione tipo de animal:</label>
                <select id="animal" name="animal" >
                    <option value="nada">Seleccione</option>
                    <option value="felino">Felino</option>
                    <option value="canino">Canino</option>
                </select>
                <br>
                <label for="nombre">Nombre:</label>
                <input type="text" name="nombre" id="nombre" required>
                <br>
                <label for="raza">Raza:</label>
                <input type="text" name="raza" id="raza" required>
                <br>
                <label for="color">Color:</label>
                <input type="text" name="color" id="color" required>
                <br>
                <label for="edad">Edad:</label>
                <input type="number" name="edad" id="edad" required>
                <br>
                <p id="entrenamiento1">Entrenamiento: <label for="entrenamiento"> </label>
                    <input type="range" id="entrenamiento" name="entrenamiento" min="0" max="10" step="1" value="0">
                    <span id="valorSeleccionado">0</span></p>
                <br>
                <label for="toxoplasmosis" id="toxoplasmosis1">Toxoplasmosis:</label>
                <input type="checkbox" id="toxoplasmosis" name="toxoplasmosis" value="toxoplasmosis">
                <br>
                <input id="boton" type="submit" value="Enviar">
            </form>
            <form action="index.html">
                <br>
                <input id="boton1" type="submit" value="Volver">
            </form>
        </center>
    </center>
    <script>
        document.getElementById("entrenamiento").style.display = "none";
        document.getElementById("entrenamiento1").style.display = "none";
        document.getElementById("toxoplasmosis").style.display = "none";
        document.getElementById("toxoplasmosis1").style.display = "none";
        document.getElementById("boton").style.display = "none";
        var slider = document.getElementById("entrenamiento");
        var valorSeleccionado = document.getElementById("valorSeleccionado");

        slider.addEventListener("input", function () {
            valorSeleccionado.textContent = slider.value;
        });

        animal.addEventListener("change", function () {
            if (animal.value === "felino") {
                document.getElementById("toxoplasmosis").style.display = "block";
                document.getElementById("toxoplasmosis1").style.display = "block";
                document.getElementById("entrenamiento").style.display = "none";
                document.getElementById("entrenamiento1").style.display = "none";
                document.getElementById("boton").style.display = "block";
            } else if (animal.value === "canino") {
                document.getElementById("entrenamiento").style.display = "block";
                document.getElementById("entrenamiento1").style.display = "block";
                document.getElementById("toxoplasmosis").style.display = "none";
                document.getElementById("toxoplasmosis1").style.display = "none";
                document.getElementById("boton").style.display = "block";
            } else if (animal.value === "nada") {
                document.getElementById("entrenamiento").style.display = "none";
                document.getElementById("entrenamiento1").style.display = "none";
                document.getElementById("toxoplasmosis").style.display = "none";
                document.getElementById("toxoplasmosis1").style.display = "none";
                document.getElementById("boton").style.display = "none";
            }
        });
    </script>
</body>
</html>



