/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backenddm20231n.nivelamento.heranca2;

/**
 *
 * @author User
 */
public class Caminhao extends Veiculo {
    
    private int eixos;

    public Caminhao(String placa, int ano, int eixos) {
        super(placa, ano);
        this.eixos = eixos;
    }

    public int getEixos() {
        return eixos;
    }

    public void setEixos(int eixos) {
        this.eixos = eixos;
    }

    @Override
    public String toString() {
        String msg = super.toString();
        return msg + " Caminhao{" + "eixos=" + eixos + '}';
    }

    
    
    
    
}
