<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - SALA</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR SALA</h1>
       <form name="consultarSala" action="validaConsultarSala.jsp" method="post">
           Capacidade: <input type="number" name ="CAP" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
