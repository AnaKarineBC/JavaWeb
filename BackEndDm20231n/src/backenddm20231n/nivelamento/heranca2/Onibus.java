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
public class Onibus extends Veiculo {
    
    private int assentos;

    public Onibus(String placa, int ano, int assentos) {
        super(placa, ano);
        this.assentos = assentos;
    }

    public int getAssentos() {
        return assentos;
    }

    public void setAssentos(int assentos) {
        this.assentos = assentos;
    }

    @Override
    public String toString() {
        String msg = super.toString();
        return msg + " Onibus{" + "assentos=" + assentos + '}';
    }

    
    
    
    
}
