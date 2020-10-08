/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hanoi3;
import java.util.*;
/**
 *
 * @author hector
 */
public class Hanoi3 {
    public static void Hanoi(int n, char A, char C, char B){
        if(n==1) System.out.println("Se mueve disco de " + A + " a " + B);
        else{
            Hanoi(n-1, A, B, C);
            System.out.println("Se mueve disco de " + A + " a " + B);
            Hanoi(n-1, C, A, B);
        }
     }
      
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Scanner input = new Scanner(System.in);
        System.out.println("Introduce el número de discos: ");
        int n = input.nextInt();
        System.out.println("Número de discos que se van a utilizar: " + n);
        Hanoi(n,'A','C','B');  // Torres A, B y C
        int movimientos = (int) (Math.pow(2,n)-1);
        System.out.println("Número total de movimientos: " + movimientos);
    }
}
