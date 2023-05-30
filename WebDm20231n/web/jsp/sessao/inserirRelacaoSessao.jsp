<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddm20231n.model.bean.Animacao"%>
<%@page import="backenddm20231n.controller.ControllerAnimacao"%>
<%@page import="backenddm20231n.model.bean.Sala"%>
<%@page import="backenddm20231n.controller.ControllerSala"%>
<%@page import="backenddm20231n.model.bean.Sessao"%>
<%@page import="backenddm20231n.controller.ControllerSessao"%>

<%
    ControllerSala salaCont = new ControllerSala();
    Sala salaEnt = new Sala("");
    List<Sala> salas = salaCont.listar(salaEnt);

    ControllerAnimacao animaCont = new ControllerAnimacao();
    Animacao animaEnt = new Animacao("");
    List<Animacao> animacoes = animaCont.listar(animaEnt);

%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR SESSÃO</title>
    <body>
        <div class="container"/>
            <h1>Inserir Sessão</h1>
            <form name="inserirSessao" action="validaRelacaoSessao.jsp" method="POST">
                <table>
                    <tr>
                        <td>Sala:</td>
                        <td>
                            <select NAME ="ID_SALA" class="browser-default">
                                <% for (Sala sala : salas) { %>
                                    <option value="<%=sala.getId()%>"><%=sala.getCapacidade()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Animação:</td>
                        <td>
                            <select NAME="ID_ANIMA" class="browser-default">
                                <% for (Animacao anima : animacoes) { %>
                                    <option value="<%=anima.getId()%>"><%=anima.getNome()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Categoria:</td>
                        <td><input type="text" name="CAT" value=""></td>
                    </tr>
                </table>    
                <input type="submit" name="Enviar" value="Enviar">  <br>
            </form>
        </div>                     
    </body>
</html>
