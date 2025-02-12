<?php  
function fibonacci($n){
    if ($n <= 1) {
        return $n;
    }  
    else
        return (fibonacci($n - 1) 
              + fibonacci($n - 2));
}

// Driver Code
$n = 40;
$start = microtime(true);
echo "The $n-th Fibonacci number is: " . fibonacci($n) . "\n";
$time_elapsed_secs = microtime(true) - $start;
echo "Time taken was $time_elapsed_secs seconds\n";
?>