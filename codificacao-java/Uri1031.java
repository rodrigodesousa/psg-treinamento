import java.io.IOException;
import java.util.Scanner;
import java.util.List;
import java.util.ArrayList;

public class Main {
	public static boolean achaM(int valor, int m) {
		List vet = new ArrayList<Integer>();
		for(int i=0; i < valor; i++ ) {
			vet.add(i + 1);
		}
		int index = 0;
		if (vet.size() > 1) {
			while(true) {
				vet.remove(index);
				index = (index - 1 + m) % vet.size();
				if(!(vet.size() > 1)) {
					break;
				}
			}
		}
		return (int)vet.get(0) == 13;
	}
 
    public static void main(String[] args) throws IOException {
 
        Scanner sc = new Scanner(System.in);
        int valor = -1;
        List valores = new ArrayList<>();
        while(valor != 0) {
        	valor = sc.nextInt();
        	int m = 1;
        	if(valor != 0) {
        		while(!achaM(valor, m)) {
        			m++;
        		}
        	}
        	if(valor != 0) {
            	valores.add(m);
        	}
        }
        valores.forEach(System.out::println);
    }
 
}