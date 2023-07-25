<%@ page import="model.ProdottoDAO" %>
<%@ page import="model.ProdottoBean" %>
<%@ page import="java.util.ArrayList" %>

<%--
  Created by IntelliJ IDEA.
  User: mattiagar
  Date: 09/07/23
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Ricerca</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
      <link rel="stylesheet" href="css/risultatoRicerca.css">

      <script src="https://unpkg.com/scrollreveal@4.0.0/dist/scrollreveal.min.js"></script>

      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flickity/2.2.1/flickity.min.css" integrity="sha512-ztsAq/T5Mif7onFaDEa5wsi2yyDn5ygdVwSSQ4iok5BPJQGYz1CoXWZSA7OgwGWrxrSrbF0K85PD5uLpimu4eQ==" crossorigin="anonymous" />
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css" integrity="sha512-NmLkDIU1C/C88wi324HBc+S2kLhi08PN5GDeUVVVC/BVt/9Izdsc9SVeVfA1UZbY3sHUlDSyRXhCzHfr6hmPPw==" crossorigin="anonymous" />
      <script src="js/cookie.js"></script>



      <script src="js/cookie.js"></script>

  </head>
  <body>
  <nav class="navbar bg-body-tertiary">
      <div class="container-fluid">
          <a class="navbar-brand" href="indexUtente.html">
              <img src="immagini/logo.jpg" alt="" class="d-inline-block align-text-top">
          </a>
          <ul class="menu">
              <li><a class="link-menu" href="areaUtente.jsp">AreaUtente</a></li>
              <li><a class="link-menu" href="contatti.html">Contatti</a></li>

              <li>
                  <form class="link-menu-form" action="logoutServlet" method="get">
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
          <form id = "b&p-search-form" class = "b&p-search-form" action="SearchItem" method="get" role="search">
              <input  class="barra-ric-text" type="text"  name = "search"  placeholder="     ....">
          </form>
      </div>

      <!-- Carrello -->
      <div class="car">
          <a href="carrello.jsp">
              <div>
                  <img class="car-img" src="immagini/carrello.png" alt="">
              </div>
          </a>
      </div>
  </nav>









  <!-- Risultato funzione ricerca (immagini) -->
  <div >
  <%@ page import = " java.util.* " %>
      <%@ page import="model.ProdottoBean" %>
      <ul class="for zoom">

      <%

          ArrayList<ProdottoBean> items = (ArrayList<ProdottoBean>) request.getSession().getAttribute("items");
          if(items.size()==0){%>
             <div class="nessun-risultato">
                 <br><br><h2>NESSUN RISULTATO TROVATO, PER FAVORE CERCA ALTRO!</h2>
             </div>
          <%}%>
      <%
          for(int i = 0; i < items.size(); i++){%>

            <% String nome = "imagesDB/" + items.get(i).getImmagine() + ".jpg"; %>

                    <div class="giochi-immagine reveal">
                        <p class="titolo reveal" ><%= items.get(i).getNomeProdotto()%></p><br><br><br>

                        <img class="immagine reveal" src=<%=nome%>><br><br>

                        <p class="descrizione reveal">
                        <%= items.get(i).getDescrizione()%><br><br>
                        <% if(items.get(i).getInSconto()==0){%>
                        <%= "Al prezzo di: " + items.get(i).getPrezzoProdotto()+ "€"%><br><br>
                        <% } else { %>
                        <p class="prezzo-cancellato" style="text-decoration: line-through"><%= items.get(i).getPrezzoProdotto() + "€"%></p>
                        <p class="prezzo-scontato"><%= "Al prezzo scontato di : " + (items.get(i).getPrezzoProdotto() - items.get(i).getPrezzoScontato()) + "€"%></p><br><br>
                        <%}%>
                        <form action="Carrello">
                        <input type="hidden" name="titolo" value=<%=items.get(i).getNomeProdotto() %>>
                        <input type="submit" class="button" id="carrello" value="Aggiungi al Carrello"><br><br><br>
                        </form>
                        </p><br>
                    </div>
       <%}%>
  </ul>
  </div>

  <div>
      <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  </div>
  <footer class="footer">
  <div class="grid">

      <div class="col reveal">
          <h4 class="normal-text tw">Domenico<br>Mattia<br>Garofalo<br></h4>
          <h5>0512110994</h5>
      </div>

  </div>
  </footer>





  <!-- Jquery -->
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

      ScrollReveal().reveal('.reveal',  { distance: '100px', duration: 800, easing: 'cubic-bezier(.215, .61, .355, 1)', interval: 600, mobile: false }) ; /*animazione reveal*/

      ScrollReveal().reveal('.zoom',  {  duration: 1500, easing: 'cubic-bezier(.215, .61, .355, 1)', interval: 200, scale: 0.65, mobile: false}); /*animazione zoom*/





  </script>
  <script>

      function controlCookie() {
          let c = getCookie();
          if (c == "admin") {
              deleteCookie(c);
          } else if (c != "") {
              document.getElementById("utente").innerHTML = "<div class=\"dropdown\">\n" +
                  "        <button class=\"dropbtn\">Bentornato "+ c +"</button>\n" +
                  "        <div class=\"dropdown-content\">\n" +
                  "\n" +
                  "          <a href=\"areaUtente.jsp\">AreaUtente</a>\n" +
                  "          <a href=\"logoutServlet\">Logout</a>\n" +
                  "          <a href=\"contatti.html\">Contatti</a>\n" +
                  "\n" +
                  "        </div>\n" +
                  "      </div>"
          }
      }
  </script>


  </body>
</html>

