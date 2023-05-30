<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - ANIMAÇÃO</title>
    <body>
       <div class="container"/>
        <h1>INSERIR ANIMAÇÃO</h1>
        <form name="inserirAnima" action="validaInserirAnima.jsp" method="post">
            Nome da animação: <input type="text" name="NOME" value=""> <br>
            Ano da animação: <input type="year" name="ANO" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
