<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddm20231n.model.bean.Sala"%>
<%@page import="backenddm20231n.model.bean.Usuario"%>
<%@page import="backenddm20231n.controller.ControllerUsuario"%>
<%@page import="backenddm20231n.controller.ControllerSessao"%>
<%@page import="backenddm20231n.model.bean.Sessao"%>
<%@page import="backenddm20231n.model.bean.Animacao"%>
<%@page import="backenddm20231n.controller.ControllerSala"%>
<%@page import="backenddm20231n.controller.ControllerAnimacao"%>

<%
    ControllerSala salaCont = new ControllerSala();
    Sala sala = new Sala("");
    List<Sala> salas = salaCont.listar(sala);

    ControllerAnimacao animaCont = new ControllerAnimacao();
    Animacao animaEnt = new Animacao("");
    List<Animacao> animas = animaCont.listar(animaEnt);

    String cod = request.getParameter("ID_SESSAO");
    int id = Integer.parseInt(cod);
    Sessao sessao = new Sessao(id);
    ControllerSessao sessaoCont = new ControllerSessao();
    sessao = sessaoCont.buscar(sessao);
    String sebusca = request.getParameter("SEBUSCA");


%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - SESSÃO</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR - SESSÃO</h1>
        <form name="alterarSessao" action="validaAlterarRelacaoSessao.jsp" method="post">
            <table>
                <tr>
                    <td>Salas:</td>
                        <td>
                            <select NAME="ID_SALA" class="browser-default">
                                <% for (Sala sal : salas) { %>
                                    <% if( sal.getId() == sessao.getIdSala()) { %>
                                        <option selected value="<%=sal.getId()%>"><%=sal.getCapacidade()%></option>
                                    <% } else { %>
                                        <option value="<%=sal.getId()%>"><%=sal.getCapacidade()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                </tr>
                <tr>
                        <td>Animações:</td>
                        <td>
                            <select NAME ="ID_ANIMA" class="browser-default">
                                <% for (Animacao anima : animas) { %>
                                    <% if( anima.getId()== sessao.getIdAnima()) { %>
                                        <option selected value="<%=anima.getId()%>"><%=anima.getNome()%></option>
                                    <% } else { %>
                                        <option value="<%=anima.getId()%>"><%=anima.getNome()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Categoria:</td>
                        <td><input type="text" name="CAT" value="<%=sessao.getCategoria()%>"></td>

                    </tr>
                </table>    
            <input type="HIDDEN" name="ID_SESSAO" value="<%=sessao.getId()%>"> <br>
            <input type="HIDDEN" name="SEBUSCA" value="<%=sebusca%>">
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>