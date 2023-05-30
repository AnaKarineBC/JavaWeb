<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - SESSÃO</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR SESSÃO</h1>
       <form name="consultarSessao" action="validaConsultarRelacaoSessao.jsp" method="post">
           Categoria: <input type="text" name="CAT" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
