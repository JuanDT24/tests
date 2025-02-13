#!/bin/sh

# Construir las imágenes de los contenedores antes de ejecutar
echo "Building Docker images..."

docker build -t python-benchmark ./python
docker build -t java-benchmark ./java
docker build -t javascript-benchmark ./javascript
docker build -t c-benchmark ./c
docker build -t php-benchmark ./php

# Ejecutar todos los contenedores usando docker-compose
echo "Running containers..."

docker-compose up --build --remove-orphans

# Esperar a que terminen y recolectar resultados
echo "-------------------"
echo "Benchmark Results:"
echo "-------------------"

# Mostrar los resultados de cada lenguaje
for lang in python java javascript c php; do
    echo "$lang:"
    cat ./results/${lang}_output.txt
    echo "-------------------"
done
