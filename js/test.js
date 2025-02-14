const { performance } = require('perf_hooks');
function Fibonacci(n){
    if(n<=1){
        return n;
    }
    return Fibonacci(n-1)+Fibonacci(n-2);
}
let n = 40;
const startTime = performance.now();
let result = Fibonacci(n);
const endTime = performance.now();
console.log("Fibonacci of " +n+ " is " + result);
console.log("Time taken is " + (endTime-startTime)/1000 + " seconds");