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
public class Triangulo extends Figura {
    
    private double base;
    private double altura;

    public Triangulo(String cor, double base, double altura) {
        super(cor);
        this.base = base;
        this.altura = altura;
    }

    public double getBase() {
        return base;
    }

    public void setBase(double base) {
        this.base = base;
    }

    public double getAltura() {
        return altura;
    }

    public void setAltura(double altura) {
        this.altura = altura;
    }

    @Override
    public String toString() {
        String msg = super.toString();
        return msg + " Triangulo{" + "base=" + base + ", altura=" + altura + '}';
    }

    @Override
    public double area() {
        return (this.base * this.altura) / 2;
    }
    
    
    
    

    
    
}
