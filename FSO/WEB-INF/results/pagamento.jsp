<%@ page import="model.Utente" %>

<%--
  Created by IntelliJ IDEA.
  User: mattiagar
  Date: 24/07/23
  Time: 13:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pagamento</title>
</head>
<body>

<div id="form">



  <p id="carta"></p>
  <label>Tipo di Carta: </label><br>
  <input type="text" id="tipo_carta" name="tipo_carta" value="<%=Utente.%>" required="required"><br>

  <p>Ci siamo quasi, clicca conferma!</p>
  <input class="button" type="button" id="fatturazione" onclick="conferma()" value="Conferma" required="required"><br><br>
</div>

</body>
</html>
