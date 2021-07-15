package br.com.rodrigo;

import java.util.Scanner;

import br.com.rodrigo.media.Media;

public class Main {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Media media = new Media();
		System.out.println("Digite sua primeira nota");
		media.setNota1(sc.nextDouble());
		System.out.println("Digite sua segunda nota");
		media.setNota2(sc.nextDouble());
		System.out.println("Digite sua terceira nota");
		media.setNota3(sc.nextDouble());
		
		System.out.println("MEDIA = " + String.format("%.1f", media.calcularMedia()));
		
	}

}
