<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddm20231n.model.bean.Usuario"%>
<%@page import="backenddm20231n.model.bean.Animacao"%>
<%@page import="backenddm20231n.controller.ControllerAnimacao"%>
<%@page import="backenddm20231n.model.bean.Sala"%>
<%@page import="backenddm20231n.controller.ControllerSala"%>
<%@page import="backenddm20231n.model.bean.Sessao"%>
<%@page import="backenddm20231n.controller.ControllerSessao"%>

<%
    String cat = request.getParameter("CAT");
    Sessao sessao = new Sessao(cat);
    ControllerSessao sessaocont = new ControllerSessao();
    List<Sessao> sessoes = sessaocont.listar(sessao);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "SEBUSCA=" + sessao.getCategoria()+"&ID_SESSAO=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA SESSÕES</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="IdSessoes">Id</th>
                  <th data-field="IdSala">IdSala</th>
                  <th data-field="NomeSala">CapacidadeSala</th>
                  <th data-field="IdAnimacao">IdAnimacao</th>
                  <th data-field="NomeAnimacao">NomeAnimacao</th>
                  <th data-field="AnoAnimacao">AnoAnimacao</th>
                  <th data-field="Categoria">Categoria</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(sessoes.isEmpty())) { %>    
                <tbody>
                    <% for (Sessao sess : sessoes) { %>
                        <tr>
                            <td><%=sess.getId()%></td>
                            <td><%=sess.getIdSala()%></td>
                            <td><%=sess.getSala().getCapacidade()%></td>
                            <td><%=sess.getIdAnima()%></td>
                            <td><%=sess.getAnimacao().getNome()%></td>
                            <td><%=sess.getAnimacao().getAno()%></td>
                            <td><%=sess.getCategoria()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirRelacaoSessao.jsp?<%=url + sess.getId()%>">Excluir</a></td>
                                <td><a href="alterarRelacaoSessao.jsp?<%=url + sess.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>