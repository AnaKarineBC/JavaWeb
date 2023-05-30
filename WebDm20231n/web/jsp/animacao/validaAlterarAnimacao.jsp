<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.Animacao"%>
<%@page import="backenddm20231n.controller.ControllerAnimacao"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    String ano = request.getParameter("ANO");
    String abusca = request.getParameter("ABUSCA");
    Animacao anima = new Animacao(id,nome,ano);
    ControllerAnimacao animaCont = new ControllerAnimacao();
    anima = animaCont.alterar(anima);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarAnima.jsp?NOME=" + abusca;
    response.sendRedirect(url);
%>