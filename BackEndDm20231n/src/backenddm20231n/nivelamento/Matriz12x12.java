/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backenddm20231n.nivelamento;

import java.util.Random;

/**
 *
 * @author User
 */
public class Matriz12x12 {
    
    static int matriz12x12[][] = new int [12][12];
    static int totalElementos;
    static int menor18;
    static int entre18e59;
    static int maior59;

    static Random elementos = new Random();

    public static void main(String args[]) {
        
        for (int linha = 0; linha < 12; linha++) {
            for(int coluna = 0; coluna <12 ; coluna++) {
                matriz12x12[linha][coluna] = elementos.nextInt(100);
                totalElementos++;
                System.out.println(matriz12x12[linha][coluna]);
            }
        }
        
        for (int linha = 0; linha < 12; linha++) {
            for(int coluna = 0; coluna <12 ; coluna++) {
                if(matriz12x12[linha][coluna] < 18) {
                    menor18++;
                } else if ((matriz12x12[linha][coluna] >= 18) && (matriz12x12[linha][coluna] <= 59)) {
                    entre18e59++;
                } else {
                    maior59++;
                }
            }
        }

        System.out.println("Total de Elementos = " + totalElementos);
        System.out.println("Total de menor18 = " + menor18);
        System.out.println("Total de entre18e59 = " + entre18e59);
        System.out.println("Total de maior59 = " + maior59);


    }
    
}
