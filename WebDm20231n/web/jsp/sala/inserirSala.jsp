<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - SALA</title>
    <body>
       <div class="container"/>
        <h1>INSERIR SALA</h1>
        <form name="inserirSala" action="validaInserirSala.jsp" method="post">
            Capacidade: <input type="number" name="CAP" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
