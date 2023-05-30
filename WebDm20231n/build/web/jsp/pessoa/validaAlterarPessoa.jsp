<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.Pessoa"%>
<%@page import="backenddm20231n.controller.ControllerPessoa"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String cpf = request.getParameter("CPF");
    String mail = request.getParameter("EMAIL");
    String tipo = request.getParameter("TIPO");
    String pbusca = request.getParameter("PBUSCA");
    Pessoa pes = new Pessoa(id,cpf,tipo,mail);
    ControllerPessoa pesCont = new ControllerPessoa();
    pes = pesCont.alterar(pes);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarPessoa.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>