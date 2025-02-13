const { performance } = require('perf_hooks');

function Fibonacci(n) {
    if (n <= 1) return n;
    return Fibonacci(n - 1) + Fibonacci(n - 2);
}

const n = 40;
const startTime = performance.now();
Fibonacci(n);
const endTime = performance.now();

// Solo imprimimos el tiempo en milisegundos para el benchmark
console.log("javascript:");
console.log(Math.round(endTime - startTime));
