#include <stdio.h>
#include <time.h>
int Fibonacci(int n) {
    if(n<=1) {
        return n;
    }
    return Fibonacci(n - 1) + Fibonacci(n - 2);
}

int main() {
    int n = 40;
    clock_t start, end;
    start = clock();
    int fn = Fibonacci(n);
    end = clock();
    printf("Time taken: %f seconds\n", (double)(end - start) / CLOCKS_PER_SEC);
    return 0;
}