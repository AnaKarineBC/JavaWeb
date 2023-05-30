<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.Usuario"%>
<%@page import="backenddm20231n.model.bean.Animacao"%>
<%@page import="backenddm20231n.controller.ControllerAnimacao"%>
<%@page import="java.util.List"%>

<%
    String nome = request.getParameter("NOME");
    Animacao anima = new Animacao(nome);
    ControllerAnimacao animacont = new ControllerAnimacao();
    List<Animacao> animaLista = animacont.listar(anima);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "ABUSCA=" + nome+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA ANIMAÇÃO</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Nome">Nome</th>
                  <th data-field="Ano">Ano</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(animaLista.isEmpty())) { %>    
                <tbody>
                    <% for (Animacao listaAnimacao : animaLista) { %>
                        <tr>
                            <td><%=listaAnimacao.getId()%></td>
                            <td><%=listaAnimacao.getNome()%></td>
                            <td><%=listaAnimacao.getAno()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirAnima.jsp?<%=url + listaAnimacao.getId()%>">Excluir</a></td>
                                <td><a href="alterarAnima.jsp?<%=url + listaAnimacao.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>