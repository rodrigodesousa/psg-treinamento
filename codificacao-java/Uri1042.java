import java.io.IOException;
import java.util.*;

public class Main {

	public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);
        List<Integer> valores = new ArrayList<>();
        int a = sc.nextInt();
        int b = sc.nextInt();
        int c = sc.nextInt();
        valores.addAll(Arrays.asList(a, b, c));
        valores.sort(null);
        valores.forEach(System.out::println);
        System.out.println("\n" + a + "\n" + b + "\n" + c);
	}

}