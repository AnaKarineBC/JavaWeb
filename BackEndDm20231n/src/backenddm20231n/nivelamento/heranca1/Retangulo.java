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
public class Retangulo extends Figura{
    
    private double lado1;
    private double lado2;

    public Retangulo(String cor, double lado1, double lado2) {
        super(cor);
        this.lado1 = lado1;
        this.lado2 = lado2;
    }

    public double getLado1() {
        return lado1;
    }

    public void setLado1(double lado1) {
        this.lado1 = lado1;
    }

    public double getLado2() {
        return lado2;
    }

    public void setLado2(double lado2) {
        this.lado2 = lado2;
    }

    @Override
    public String toString() {
        String msg = super.toString();
        return msg + " Retangulo{" + "lado1=" + lado1 + ", lado2=" + lado2 + '}';
    }

    @Override
    public double area() {
        return (this.lado1 * this.lado2);
    }
    
}
