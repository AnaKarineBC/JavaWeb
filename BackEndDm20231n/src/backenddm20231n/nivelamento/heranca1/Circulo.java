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
public class Circulo extends Figura{
    
    private double raio;

    public Circulo(String cor, double raio) {
        super(cor);
        this.raio = raio;
    }

    public double getRaio() {
        return raio;
    }

    public void setRaio(double raio) {
        this.raio = raio;
    }

    @Override
    public String toString() {
        String msg = super.toString();
        return msg + " Circulo{" + "raio=" + raio + '}';
    }

    @Override
    public double area() {
        return raio * 3.14 * 2;
    }
    
    
    
    
}
