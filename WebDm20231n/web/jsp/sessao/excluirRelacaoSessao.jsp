l<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.Sessao"%>
<%@page import="backenddm20231n.controller.ControllerSessao"%>

<%
    String cod = request.getParameter("ID_SESSAO");
    int id = Integer.parseInt(cod);
    Sessao sessao = new Sessao(id);
    ControllerSessao sessaoCont = new ControllerSessao();
    sessao = sessaoCont.excluir(sessao);
    
    String sebusca = request.getParameter("SEBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoSessao.jsp?CAT=" + sebusca;
    response.sendRedirect(url);

%>

