import java.io.IOException;
import java.util.*;

public class Main {
	
	public static String criptografarString(String str) {
		char[] ascii = str.toCharArray();
		char[] asciiInvertido = new char[ascii.length];
		for(int i = 0; i < ascii.length; i++){
	        if(((int)ascii[i] <= 90 && (int)ascii[i] >= 65) || ((int)ascii[i] <= 122 && (int)ascii[i] >= 97)) {
	        	ascii[i] = (char)((int)ascii[i] + 3);
	        }
	        asciiInvertido[ascii.length - 1 - i] = ascii[i];
	    }
		String strFinal = "";
		for(int i = 0; i < asciiInvertido.length; i++) {
			if(i >= (asciiInvertido.length / 2)) {
				asciiInvertido[i] = (int)asciiInvertido[i] != 0 ? (char)((int)asciiInvertido[i] - 1) : (char)255;	
			}
	        strFinal += asciiInvertido[i];
		}
		return strFinal;
	}

	public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);
        String N = sc.nextLine();
    	List<String> lista = new ArrayList<>();
    	for(int i = 0; i < Integer.parseInt(N); i++) {
        	String str = sc.nextLine();
        	lista.add(criptografarString(str));
        }
    	lista.forEach(System.out::println);
	}

}