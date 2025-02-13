#!/bin/sh

# Construir y ejecutar contenedores
docker-compose up --build --abort-on-container-exit

# Crear carpeta de resultados si no existe
mkdir -p results

# Copiar los archivos de salida desde cada contenedor
docker cp c-container:/app/c_output.txt results/c_output.txt
docker cp python-container:/app/py_output.txt results/py_output.txt
docker cp java-container:/app/j_output.txt results/j_output.txt
docker cp javascript-container:/app/js_output.txt results/js_output.txt
docker cp php-container:/app/php_output.txt results/php_output.txt

# Mostrar los resultados
echo "-------------------"
echo "Benchmark Results:"
echo "-------------------"
for file in results/*.txt; do
  echo "${file##*/}:"
  cat "$file"
  echo "-------------------"
done
