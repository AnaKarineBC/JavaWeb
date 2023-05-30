/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package backenddm20231n.controller;



import backenddm20231n.model.bean.Animacao;
import backenddm20231n.model.dao.DaoAnimacao;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Ana
 */
public class ControllerAnimacao {

    DaoAnimacao daoAnimacao;
    
    public Animacao inserir(Animacao animacao) throws SQLException, ClassNotFoundException {
        daoAnimacao = new DaoAnimacao();
        Animacao animacaoOut = daoAnimacao.inserir(animacao);
        return animacaoOut;
    }
    
    public Animacao alterar(Animacao animacao) throws SQLException, ClassNotFoundException {
        daoAnimacao = new DaoAnimacao();
        Animacao animacaoOut = daoAnimacao.alterar(animacao);
        return animacaoOut;
    }
    public Animacao buscar(Animacao animacao) throws SQLException, ClassNotFoundException {
        daoAnimacao = new DaoAnimacao();
        Animacao animacaoOut = daoAnimacao.buscar(animacao);
        return animacaoOut;
    }
    public Animacao excluir(Animacao animacao) throws SQLException, ClassNotFoundException {
        daoAnimacao = new DaoAnimacao();
        Animacao animacaoOut = daoAnimacao.excluir(animacao);
        return animacaoOut;
    }
    public List<Animacao> listar(Animacao animacao) throws SQLException, ClassNotFoundException {
        daoAnimacao = new DaoAnimacao();
         List<Animacao> listaAnimacao = daoAnimacao.listar(animacao);
        return listaAnimacao;
    }
    
}
