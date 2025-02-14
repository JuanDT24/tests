<?php  
function fibonacci($n) {
    if ($n <= 1) {
        return $n;
    }  
    return fibonacci($n - 1) + fibonacci($n - 2);
}

// Driver Code
$n = 40;
$start = microtime(true);

$result = fibonacci($n);

$time_elapsed_ms = (microtime(true) - $start) * 1000; // Convert seconds to milliseconds


echo "php:" . number_format($time_elapsed_ms, 3) . " ms\n";
?>
