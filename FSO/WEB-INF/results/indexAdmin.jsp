<%@ page import="model.ProdottoBean" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: mattiagar
  Date: 21/07/23
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="css/indexAdmin.css">

    <script src="https://unpkg.com/scrollreveal@4.0.0/dist/scrollreveal.min.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flickity/2.2.1/flickity.min.css" integrity="sha512-ztsAq/T5Mif7onFaDEa5wsi2yyDn5ygdVwSSQ4iok5BPJQGYz1CoXWZSA7OgwGWrxrSrbF0K85PD5uLpimu4eQ==" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css" integrity="sha512-NmLkDIU1C/C88wi324HBc+S2kLhi08PN5GDeUVVVC/BVt/9Izdsc9SVeVfA1UZbY3sHUlDSyRXhCzHfr6hmPPw==" crossorigin="anonymous" />



</head>
<body>
<nav class="navbar bg-body-tertiary">
    <div class="container-fluid">
        <a class="navbar-brand" >
            <img src="immagini/logo.jpg" alt="" class="d-inline-block align-text-top">
        </a>
        <ul class="menu">
            <li><a class="link-menu" href="loginUtenteServlet">LoginUtente</a></li>
            <li><form class="link-menu-form" action="logoutServlet" method="get">
                <input class="link-menu-logout" type="submit" value="Logout">
            </form>
            </li>
        </ul>
    </div>
    <div class="hamburger">
        <span></span>
        <span></span>
        <span></span>
    </div>
    <!-- Barra di ricerca -->
    <div class="barra-ric">
        <form id = "b&p-search-form" class = "b&p-search-form" action="SearchClienteItem" method="get" role="search">
            <input  class="barra-ric-text" type="text"  name = "search"  placeholder="            Oki, Bronchenolo...">
        </form>
    </div>
</nav>
<br><br>
<h1 class="h zoom">Rimuovi prodotto: </h1>

    <!-- form admin_f -->
    <form action="prova.html" id="myForm" ><br><br>

        <label for="tit">Titolo:</label>
        <input   list="tit" placeholder="Inserisci titolo del prodotto" name="tit" class="text"><br><br>
        <datalist  id="tit">
            <%
                ArrayList<ProdottoBean> items = (ArrayList<ProdottoBean>) request.getSession().getAttribute("items");
                if(items.size()==0){%>
         <option value="null" >
            <%}%>
            <% if(items.size()>0)
                for(int i = 0; i < items.size(); i++){%>

            <option value="<%= items.get(i).getNomeProdotto()%>">

            <%}%>

        </datalist>


        <input class="button" type="submit" value="Rimuovi dal database"><br>
    </form>
    <div id="responseContainer"></div>
    <script>
        // Funzione per gestire l'invio del form
        function submitForm(event) {
            event.preventDefault(); // Impedisci l'invio del modulo predefinito

            // Ottieni i dati del modulo
            const formData = new FormData(event.target);
            const titolo = formData.get("tit")
            const data = {
                tit : titolo
            };





            // Usa l'API fetch per effettuare una chiamata AJAX alla servlet
            fetch('/FSO/eliminaProdotto', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: titolo
            })
                .then(response => response.json())
                .then(data => {
                    // Gestisce la risposta dal servlet


                    alert(data.message);
                })
                .catch(error => {
                    console.error('Error:', error);
                });
        }

        const form = document.getElementById('myForm');
        form.addEventListener('submit', submitForm);
    </script>





    <div>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

    </div>
    <!-- Footer -->
    <footer class="footer">
        <div class="grid">

            <div class="col reveal">
                <h4 class="normal-text tw">Domenico<br>Mattia<br>Garofalo<br></h4>
                <h5>0512110994</h5>
            </div>

        </div>
    </footer>

    <!-- Jquery -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/flickity/2.2.1/flickity.pkgd.min.js" integrity="sha512-Nx/M3T/fWprNarYOrnl+gfWZ25YlZtSNmhjHeC0+2gCtyAdDFXqaORJBj1dC427zt3z/HwkUpPX+cxzonjUgrA==" crossorigin="anonymous"></script>

    <script>
        $( document ).ready(function() {

            /* Open Panel */
            $( ".hamburger" ).on('click', function() {
                $(".menu").toggleClass("menu--open");
            });

        });


        ScrollReveal().reveal('.reveal');

        ScrollReveal().reveal('.reveal',  { distance: '100px', duration: 1500, easing: 'cubic-bezier(.215, .61, .355, 1)', interval: 600, mobile: false }) ; /*animazione reveal*/

        ScrollReveal().reveal('.zoom',  {  duration: 1500, easing: 'cubic-bezier(.215, .61, .355, 1)', interval: 200, scale: 0.65, mobile: false}); /*animazione zoom*/

    </script>


</body>
</html>
