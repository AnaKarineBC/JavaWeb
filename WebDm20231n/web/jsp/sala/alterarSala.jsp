<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.Sala"%>
<%@page import="backenddm20231n.controller.ControllerSala"%>
<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Sala sala = new Sala(id);
    ControllerSala salaCont = new ControllerSala();
    sala = salaCont.buscar(sala);
    String sbusca = request.getParameter("SBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - SALA</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR SALA</h1>
        <form name="alterarSala" action="validaAlterarSala.jsp" method="post">
            Capacidade: <input type="number" name="CAP" value="<%=sala.getCapacidade()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=sala.getId()%>"> <br>
            <input type="HIDDEN" name="SBUSCA" value="<%=sbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>