#!/bin/sh
echo "-------------------"
echo "Benchmark Results:"
echo "-------------------"

for lang in python java javascript c php; do
    echo "$lang:"
    cat "./$lang/${lang}_output.txt"
    echo "-------------------"
done
