<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.Usuario"%>
<%@page import="backenddm20231n.model.bean.Sala"%>
<%@page import="backenddm20231n.controller.ControllerSala"%>
<%@page import="java.util.List"%>

<%
    String cap = request.getParameter("CAP");
    Sala sala = new Sala(cap);
    ControllerSala salacont = new ControllerSala();
    List<Sala> salas = salacont.listar(sala);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "SBUSCA=" + cap+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA SALAS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Cap">Capacidade</th>
              </tr>
            </thead>
            <% if (!(salas.isEmpty())) { %>    
                <tbody>
                    <% for (Sala listaSalas : salas) { %>
                        <tr>
                            <td><%=listaSalas.getId()%></td>
                            <td><%=listaSalas.getCapacidade()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirSala.jsp?<%=url + listaSalas.getId()%>">Excluir</a></td>
                                <td><a href="alterarSala.jsp?<%=url + listaSalas.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>