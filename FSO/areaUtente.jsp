<%--
  Created by IntelliJ IDEA.
  User: mattiagar
  Date: 13/07/23
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>FSO</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  <link rel="stylesheet" href="css/areaUtente.css">

  <script src="https://unpkg.com/scrollreveal@4.0.0/dist/scrollreveal.min.js"></script>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flickity/2.2.1/flickity.min.css" integrity="sha512-ztsAq/T5Mif7onFaDEa5wsi2yyDn5ygdVwSSQ4iok5BPJQGYz1CoXWZSA7OgwGWrxrSrbF0K85PD5uLpimu4eQ==" crossorigin="anonymous" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css" integrity="sha512-NmLkDIU1C/C88wi324HBc+S2kLhi08PN5GDeUVVVC/BVt/9Izdsc9SVeVfA1UZbY3sHUlDSyRXhCzHfr6hmPPw==" crossorigin="anonymous" />



</head>
<body class="body"  onload="controlCookie()">
<nav class="navbar bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="indexUtente.html">
      <img src="immagini/logo.jpg" alt="" class="d-inline-block align-text-top">
    </a>


    <ul class="menu">
      <li><a class="link-menu" href="indexUtente.html">Home</a></li>
      <li><a class="link-menu" href="carrello.jsp">Carrello</a></li>
      <li><a class="link-menu" href="contattiUtente.html">Contatti</a></li>

    </ul>
  </div>
  <div class="hamburger">
    <span></span>
    <span></span>
    <span></span>

  </div>





  <!-- Contenitore -->
  <div class="div-contenitore">

    <!-- Bentornato -->
    <div class="div-bentornato reveal">
      <h1>Bentornato <br> Ti diamo il benvenuto nella tua area personale</h1><br><br><br><br><br><br><br><br><br>
      <label for="modifica">Clicca sul pulsante modifica per modificare i tuoi dati</label><br><br>
      <a class="button" id="modifica" href="modificaDatiUtente.jsp">Modifica</a><br><br><br><br><br><br><br><br><br>

      <label for="ordini">Ritorna alla home.</label><br><br>
      <a class="button" id="ordini" href="indexUtente.html">HOME</a>

    </div>
  </div>
</nav>






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

  ScrollReveal().reveal('.zoom',  {  duration: 2000, easing: 'cubic-bezier(.215, .61, .355, 1)', interval: 200, scale: 0.65, mobile: false}); /*animazione zoom*/



</script>


</body>
</html>