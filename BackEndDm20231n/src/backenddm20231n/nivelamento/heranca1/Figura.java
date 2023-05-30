/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backenddm20231n.nivelamento.heranca1;

/**
 *
 * @author User
 */
public abstract class Figura {
    
    private String cor;

    public Figura(String cor) {
        this.cor = cor;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    @Override
    public String toString() {
        return "Figura{" + "cor=" + cor + '}';
    }
    
    public abstract double area();
    
}
