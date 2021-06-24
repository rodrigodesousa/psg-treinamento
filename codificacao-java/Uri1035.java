import java.io.IOException;
import java.util.Scanner; 

public class Main {
 
    public static void main(String[] args) throws IOException {
		Scanner sc = new Scanner(System.in);
		int A = sc.nextInt();
		int B = sc.nextInt();
		int C = sc.nextInt();
		int D = sc.nextInt();
		boolean res = true;
		if(B <= C)
		{
			res = false;
		}
		if(D <= A)
		{		
			res = false;
		}
		if((C + D) <= (A + B))
		{
			res = false;
		}
		if(C < 0 || D < 0)
		{
			res = false;
		}
		if((A % 2) != 0)
		{
			res = false;
		}
		if(res)
		{
			System.out.println("Valores aceitos");
		}
		else
		{
			System.out.println("Valores nao aceitos");
		}
    }
 
}