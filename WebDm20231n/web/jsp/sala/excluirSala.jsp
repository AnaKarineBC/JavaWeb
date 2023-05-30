<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.Sala"%>
<%@page import="backenddm20231n.controller.ControllerSala"%>


<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Sala sala = new Sala(id);
    ControllerSala salaCont = new ControllerSala();
    sala = salaCont.excluir(sala);
    String sbusca = request.getParameter("SBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarSala.jsp?ID=" + sbusca;
    response.sendRedirect(url);
%>