package cl.desafiolatam.util;

public class FactorialUtil {
	public static int calcularFactorial(int n) {
	    int factorial = 1;
	    int i = 1;
	    while (i <= n) {
	        factorial *= i;
	        i++;
	    }
	    return factorial;
	}
}
