import java.io.IOException;
import java.util.*;

public class Main {

	public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);
        String N = sc.next();
        String D = sc.next();
        List<String> valores = new ArrayList<>();
        while(!(N + " " + D).equals("0 0")) {
        	String valor = D.replace(N, "");
        	while(valor.indexOf("0") == 0) {
        		valor = valor.substring(1);
        	}
        	valores.add(valor.equals("") ? "0" : valor);
            N = sc.next();
            D = sc.next();
        }
    	
    	valores.forEach(System.out::println);
	}

}