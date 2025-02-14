public class Main {
    static int nthFibonacci(int n) {
        if (n <= 1) {
            return n;
        }
        return nthFibonacci(n - 1) + nthFibonacci(n - 2);
    }

    public static void main(String[] args) {
        int n = 40;  // Número de Fibonacci a calcular
        long startTime = System.currentTimeMillis();
        nthFibonacci(n);
        long endTime = System.currentTimeMillis();

        System.out.print("java:");
        System.out.print(endTime - startTime);
        System.out.print("ms");
    }
}
