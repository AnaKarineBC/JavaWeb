/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backenddm20231n;

import backenddm20231n.view.ManterAnimacao;
import backenddm20231n.view.ManterFatecs;
import backenddm20231n.view.ManterLogradouro;
import backenddm20231n.view.ManterPessoa;
import backenddm20231n.view.ManterPessoasFatecs;
import backenddm20231n.view.ManterPessoasLogradouros;
import backenddm20231n.view.ManterSala;
import backenddm20231n.view.ManterSessao;
import backenddm20231n.view.ManterUsuario;
import backenddm20231n.view.ManterUsuariosPessoas;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author User
 */
public class BackEndDm20231n {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        if(ManterUsuario.validar()) {
            menu();
        } else {
            JOptionPane.showMessageDialog(null,"Usuario Inválido");            
        }
    }

    public static void menu() throws SQLException, ClassNotFoundException {
        String msg = " 0 - Sair \n 1 - Usuario \n 2 - Pessoa \n 3 - Logradouro \n 4 - PessoasLogradouros \n 5 - UsuariosPessoas \n 6 - Fatecs \n 7 - PessoasFatecs \n 8 - Salas \n 9 - Animacoes \n 10 - Sessoes \n";
        int num = Integer.parseInt(JOptionPane.showInputDialog(msg));
        switch (num) {
            case 0:
                int sair = JOptionPane.showConfirmDialog(null,"Deseja Sair");
                if (sair > 0) menu();
                break;
            case 1:
                ManterUsuario.menu();
                break;
            case 2:
                ManterPessoa.menu();
                break;
            case 3:
                ManterLogradouro.menu();
                break;
            case 4:
                ManterPessoasLogradouros.menu();
                break;
            case 5:
                ManterUsuariosPessoas.menu();
                break;
            case 6:
                ManterFatecs.menu();
                break;
            case 7:
                ManterPessoasFatecs.menu();
                break;
            case 8:
                ManterSala.menu();
                break;
            case 9:
                ManterAnimacao.menu();
                break;
            case 10:
                ManterSessao.menu();
                break;
            default:
                System.out.println("Opção inválido");
        }
    }
    
}
