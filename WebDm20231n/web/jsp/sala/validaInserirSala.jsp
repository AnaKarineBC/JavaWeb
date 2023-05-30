<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.Sala"%>
<%@page import="backenddm20231n.controller.ControllerSala"%>

<%
    String cap = request.getParameter("CAP");
 
    Sala sala = new Sala(cap);
    ControllerSala salacont = new ControllerSala();
    sala = salacont.inserir(sala);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirSala.jsp";
    response.sendRedirect(url);
%>

