<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - ANIMAÇÃO</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR ANIMAÇÃO</h1>
       <form name="consultarAnima" action="validaConsultarAnima.jsp" method="post">
           NOME DA ANIMAÇÃO: <input type="text" name ="NOME" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
