/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backenddm20231n.nivelamento.heranca2;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author User
 */
public class TesteHeranca2 {
    
      public static void main (String args[]) {
        
          List<Veiculo> listaVeiculos = new ArrayList<>();
          listaVeiculos.add(new Veiculo ("x",2021));
          listaVeiculos.add(new Veiculo ("xx",2022));
          listaVeiculos.add(new Veiculo ("xxx",2023));
          listaVeiculos.add(new Onibus ("ooo",2021,40));
          listaVeiculos.add(new Caminhao ("ccc",2023,8));

          for (Veiculo v : listaVeiculos) {
               System.out.println(v);
          }

      }
  
    
}
