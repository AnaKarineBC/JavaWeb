/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package backenddm20231n.controller;

import backenddm20231n.model.bean.Animacao;
import backenddm20231n.model.bean.Sala;
import backenddm20231n.model.bean.Sessao;
import backenddm20231n.model.dao.DaoSessao;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Ana
 */
public class ControllerSessao {
     DaoSessao daoSessao;
     ControllerSala contsala;
     ControllerAnimacao contanima;
    
    public Sessao inserir(Sessao sessao) throws SQLException, ClassNotFoundException {
        daoSessao = new DaoSessao();
        sessao = daoSessao.inserir(sessao);
        return sessao;
    }
    
    public Sessao alterar(Sessao sessao) throws SQLException, ClassNotFoundException {
        daoSessao = new DaoSessao();
        sessao = daoSessao.alterar(sessao);
        return sessao;
    }
    public Sessao buscar(Sessao entsessao) throws SQLException, ClassNotFoundException {
        daoSessao = new DaoSessao();
        Sessao sessaoSaida = daoSessao.buscar(entsessao);

        Animacao anima = new Animacao(sessaoSaida.getIdAnima());
        contanima = new ControllerAnimacao();
        sessaoSaida.setAnimacao(contanima.buscar(anima));
        
        Sala sala = new Sala(sessaoSaida.getIdSala());
        contsala = new ControllerSala();
        sessaoSaida.setSala(contsala.buscar(sala));

        return sessaoSaida;
    }
    public Sessao excluir(Sessao sessao) throws SQLException, ClassNotFoundException {
        daoSessao = new DaoSessao();
        return daoSessao.excluir(sessao);
    }
    public List<Sessao> listar(Sessao sessaoent) throws SQLException, ClassNotFoundException {
        daoSessao = new DaoSessao();
        List<Sessao> sessoesAux = daoSessao.listar(sessaoent);
        List<Sessao> sessoesRetorno = new ArrayList<>();
        for(Sessao sessao : sessoesAux) {        
            sessoesRetorno.add(buscar(sessao));
        }
        return sessoesRetorno;
     }
}
