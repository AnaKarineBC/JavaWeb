<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.Usuario"%>
<%@page import="backenddm20231n.controller.ControllerUsuario"%>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    Usuario usuEntrada = new Usuario(login,senha);
    ControllerUsuario usucont = new ControllerUsuario();
    Usuario usuSaida = usucont.validarWeb(usuEntrada);
    session.setAttribute("UsuarioLogado",usuSaida);
%>


<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>SISTEMA </title>
    <body>
        <% if (usuSaida != null) { %>
            <!-- Dropdown1 Trigger -->
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown1'>Manter Usuário</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown2'>Manter Pessoa</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown3'>Manter Acesso</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown4'>Manter Fatec</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown5'>Manter Logradouro</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown6'>Manter Pessoas-fatecs</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown7'>Manter Pessoas-Logradouros</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown8'>Manter Salas</a>   
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown9'>Manter Animacao</a>   
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown0'>Manter Sessao</a>   
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown1 Structure -->
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../usuario/inserirUsuario.jsp"> InseriUsuario </a></li>
                    <li><a href="../usuario/consultarUsuario.jsp"> ConsultaUsuarioParametro </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../usuario/consultarUsuario.jsp"> ConsultaUsuarioParametro </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown2 Structure -->
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../pessoa/inserirPessoa.jsp"> InseriPessoa </a></li>
                    <li><a href="../pessoa/consultarPessoa.jsp"> ConsultaPessoa </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../pessoa/consultarPessoa.jsp"> ConsultaPessoa </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown3 Structure -->
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../usupes/inserirRelacaoUsuarioPessoa.jsp"> InseriUsuarioPessoa </a></li>
                    <li><a href="../usupes/consultarRelacaoUsuarioPessoa.jsp"> ConsultaUsuarioPessoa </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../usuario/consultarRelacaoUsuarioPessoa.jsp"> ConsultaUsuarioPessoa </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown4 Structure -->
                <ul id='dropdown4' class='dropdown-content'>
                    <li><a href="../cliente/inserirCliente.jsp"> InseriCliente </a></li>
                    <li><a href="../cliente/consultarCliente.jsp"> ConsultaCliente </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown4' class='dropdown-content'>
                    <li><a href="../cliente/consultarCliente.jsp"> ConsultaCliente </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown5 Structure -->
                <ul id='dropdown5' class='dropdown-content'>
                    <li><a href="../funcionario/inserirFuncionario.jsp"> InseriFuncionario </a></li>
                    <li><a href="../funcionario/consultarFuncionario.jsp"> ConsultaFuncionario </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown5' class='dropdown-content'>
                    <li><a href="../funcionario/consultarFuncionario.jsp"> ConsultaFuncionario </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown6 Structure -->
                <ul id='dropdown7' class='dropdown-content'>
                    <li><a href="../clifun/inserirRelacaoClienteFuncionario.jsp"> InseriClientefuncionario </a></li>
                    <li><a href="../clifun/consultarRelacaoClienteFuncionario.jsp"> ConsultaClienteFuncionario </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown7' class='dropdown-content'>
                    <li><a href="../clifun/consultarRelacaoClienteFuncionario.jsp"> ConsultaClienteFuncionario </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown6 Structure -->
                <ul id='dropdown8' class='dropdown-content'>
                    <li><a href="../sala/inserirSala.jsp"> InserirSala</a></li>
                    <li><a href="../sala/consultarSala.jsp"> ConsultarSala </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown8' class='dropdown-content'>
                    <li><a href="../sala/consultarSala.jsp"> ConsultarSala </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown6 Structure -->
                <ul id='dropdown9' class='dropdown-content'>
                    <li><a href="../animacao/inserirAnima.jsp"> InserirAnimação </a></li>
                    <li><a href="../animacao/consultarAnima.jsp"> ConsultarAnimação </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown9' class='dropdown-content'>
                    <li><a href="../animacao/consultarAnima.jsp"> ConsultarAnimação </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown6 Structure -->
                <ul id='dropdown0' class='dropdown-content'>
                    <li><a href="../sessao/inserirRelacaoSessao.jsp"> InserirSessão </a></li>
                    <li><a href="../sessao/consultarRelacaoSessao.jsp"> ConsultarSessão </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown0' class='dropdown-content'>
                    <li><a href="../sessao/consultarRelacaoSessao.jsp"> ConsultarSessão </a></li>
                </ul>
            <% } %>
            <% } else { %>
                <h1>USUÁRIO INVÁLIDO</h1>
        <% } %>
    </body>
</html>