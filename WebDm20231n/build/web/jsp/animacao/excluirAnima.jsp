<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.Animacao"%>
<%@page import="backenddm20231n.controller.ControllerAnimacao"%>


<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Animacao anima = new Animacao(id);
    ControllerAnimacao animaCont = new ControllerAnimacao();
    anima = animaCont.excluir(anima);
    String abusca = request.getParameter("ABUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarAnima.jsp?NOME=" + abusca;
    response.sendRedirect(url);
%>