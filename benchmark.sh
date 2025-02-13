#!/bin/sh

# Ejecutar todos los contenedores
docker-compose up --build --remove-orphans

# Esperar a que terminen y recolectar resultados
echo "-------------------"
echo "Benchmark Results:"
echo "-------------------"

for lang in python java javascript c php; do
    echo "$lang:"
    cat ./results/${lang}_output.txt
    echo "-------------------"
done
