#include <stdio.h>
#include <time.h>

int Fibonacci(int n) {
    if (n <= 1) {
        return n;
    }
    return Fibonacci(n - 1) + Fibonacci(n - 2);
}

int main() {
    int n = 40;
    clock_t start, end;
    start = clock();
    Fibonacci(n);
    end = clock();

    // Imprimir solo el tiempo en milisegundos
    printf("C:");
    printf("%ld\n", (end - start) * 1000 / CLOCKS_PER_SEC);
    return 0;
}
