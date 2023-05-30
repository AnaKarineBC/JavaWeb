<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.Animacao"%>
<%@page import="backenddm20231n.controller.ControllerAnimacao"%>

<%
    String nome = request.getParameter("NOME");
    String ano = request.getParameter("ANO");
 
    Animacao anima = new Animacao(nome,ano);
    ControllerAnimacao animacont = new ControllerAnimacao();
    anima = animacont.inserir(anima);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirAnima.jsp";
    response.sendRedirect(url);
%>

