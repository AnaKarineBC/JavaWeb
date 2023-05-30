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
public class TesteHeranca1 {
    
    public static void main (String args[]) {
        
        // Heranca1
        Retangulo ret = new Retangulo ("Vermelho", 2.5, 3.5);
        System.out.println(ret);
        System.out.println("Area Retangulo = " + ret.area());

        Triangulo tri = new Triangulo ("Verde", 2.5, 3.5);
        System.out.println(tri);
        System.out.println("Area Triangulo = " + tri.area());

        Circulo cir = new Circulo ("Amarelo",3.5);
        System.out.println(cir);
        System.out.println("Area Circulo = " + cir.area());

        Quadrado qua = new Quadrado ("Verde",3.5,3.5);
        System.out.println(qua);
        System.out.println("Area Quadrado = " + qua.area());
    }
    
}
