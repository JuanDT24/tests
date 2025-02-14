package JavaTest;
public class test {
    static int nthFibonacci(int n){
        if (n <= 1) {
            return n;
        }
        return nthFibonacci(n - 1) + nthFibonacci(n - 2);
    }
    public static void main(String[] args) {
        int n = 40;
        long startTime = System.currentTimeMillis();
        int result = nthFibonacci(n);
        long endTime = System.currentTimeMillis();
        double timeTaken = (endTime - startTime)/1000.0; 
        System.out.println("Time taken was " + timeTaken + " seconds");
    }
}