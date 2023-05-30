<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.Animacao"%>
<%@page import="backenddm20231n.controller.ControllerAnimacao"%>
<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Animacao anima = new Animacao(id);
    ControllerAnimacao animaCont = new ControllerAnimacao();
    anima = animaCont.buscar(anima);
    String abusca = request.getParameter("ABUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - ANIMAÇÃO</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR ANIMAÇÃO</h1>
        <form name="alterarAnima" action="validaAlterarAnimacao.jsp" method="post">
            Nome da animação: <input type="text" name="NOME" value="<%=anima.getNome()%>"> <br>
            Ano da animação: <input type="year" name="ANO" value="<%=anima.getAno()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=anima.getId()%>"> <br>
            <input type="HIDDEN" name="ABUSCA" value="<%=abusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>