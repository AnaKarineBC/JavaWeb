<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.Animacao"%>
<%@page import="backenddm20231n.controller.ControllerAnimacao"%>
<%@page import="backenddm20231n.model.bean.Sala"%>
<%@page import="backenddm20231n.controller.ControllerSala"%>
<%@page import="backenddm20231n.model.bean.Sessao"%>
<%@page import="backenddm20231n.controller.ControllerSessao"%>

<%
    int idAnimacao = Integer.parseInt(request.getParameter("ID_ANIMA"));
    int idSala = Integer.parseInt(request.getParameter("ID_SALA"));
    String cat = request.getParameter("CAT");
    Sessao sessao = new Sessao(idSala,idAnimacao,cat);
    ControllerSessao sessaocont = new ControllerSessao();
    sessao = sessaocont.inserir(sessao);
    
// REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirRelacaoSessao.jsp";
    response.sendRedirect(url);

%>