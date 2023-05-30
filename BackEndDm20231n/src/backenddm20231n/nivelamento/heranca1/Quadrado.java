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
public class Quadrado extends Retangulo {

    public Quadrado(String cor, double lado1, double lado2) {
        super(cor, lado1, lado2);
    }
    
    @Override
    public double area() {
        return (super.getLado1() * super.getLado1());
    }

    @Override
    public String toString() {
        String msg = super.toString();
        return msg + " Quadrado{" + "lado1=" + super.getLado1() + ", lado2=" + super.getLado2() + '}';
    }

    
    
    
}
