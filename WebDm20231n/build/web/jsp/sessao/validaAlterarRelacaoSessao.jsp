<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddm20231n.model.bean.Animacao"%>
<%@page import="backenddm20231n.controller.ControllerAnimacao"%>
<%@page import="backenddm20231n.model.bean.Sala"%>
<%@page import="backenddm20231n.controller.ControllerSala"%>
<%@page import="backenddm20231n.model.bean.Sessao"%>
<%@page import="backenddm20231n.controller.ControllerSessao"%>

<%
    String cod = request.getParameter("ID_SESSAO");
    int id = Integer.parseInt(cod);
    int idAnima = Integer.parseInt(request.getParameter("ID_ANIMA"));
    int idSala = Integer.parseInt(request.getParameter("ID_SALA"));
    String cat = request.getParameter("CAT");
    String sebusca = request.getParameter("SEBUSCA");
    Sessao sessao = new Sessao(id,idSala,idAnima,cat);
    ControllerSessao sessaocont = new ControllerSessao();
    sessao = sessaocont.alterar(sessao);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoSessao.jsp?CAT=" + sebusca;
    response.sendRedirect(url);
%>    
    
    