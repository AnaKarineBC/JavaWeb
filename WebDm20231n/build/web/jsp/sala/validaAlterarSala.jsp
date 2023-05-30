<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.Sala"%>
<%@page import="backenddm20231n.controller.ControllerSala"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String cap = request.getParameter("CAP");
    String sbusca = request.getParameter("SBUSCA");
    Sala sala = new Sala(id,cap);
    ControllerSala salaCont = new ControllerSala();
    sala = salaCont.alterar(sala);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarSala.jsp?NOME=" + sbusca;
    response.sendRedirect(url);
%>