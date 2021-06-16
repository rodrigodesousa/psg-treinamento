package atividade;

import java.io.IOException;
import java.util.Scanner;

public class Uri1020 {
 
    public static void main(String[] args) throws IOException {
 
        Scanner sc = new Scanner(System.in);
        int dias = sc.nextInt();
        int anos = dias / 365;
        int resto = dias % 365;
        int meses = resto / 30;
        resto = resto % 30;
        System.out.println(anos + " ano(s)");
        System.out.println(meses + " mes(es)");
        System.out.println(resto + " dia(s)");
 
    }
 
}
