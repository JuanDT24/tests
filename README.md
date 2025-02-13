# Docker Benchmark for Programming Languages

Este proyecto tiene como objetivo analizar el rendimiento de diferentes lenguajes de programación al resolver el mismo problema utilizando contenedores Docker. Los lenguajes que se utilizarán en este benchmark son: Python, Java, JavaScript, C y PHP.

## Requisitos

- **Play with Docker** o cualquier entorno con soporte para Docker.
- **Docker** y **Docker Compose** instalados en tu máquina.

## Pasos

1. **Ejecutar Docker in Docker (DinD)**:
   - Inicia el contenedor `docker:dind` para permitir la construcción y ejecución de otros contenedores dentro de él.
   ```sh
   docker run --privileged -d --name dind-container docker:dind
   docker exec -it dind-container sh
   ```

2. **Instalar dependencias dentro del contenedor DinD**:
   - Instala las herramientas necesarias, incluyendo `alpine-base` y `git`.
   ```sh
   apk add --no-cache alpine-base
   apk add --no-cache git
   ```

3. **Ejecutar los contenedores de cada lenguaje**:
   - Corre los contenedores para Python, Java, JavaScript, C y PHP.
   ```sh
   docker run -d --name python python:3.10-alpine sleep infinity
   docker run -d --name java openjdk:17-alpine sleep infinity
   docker run -d --name javascript node:18-alpine sleep infinity
   docker run -d --name c alpine:latest sleep infinity
   docker run -d --name php php:8.2-cli-alpine sleep infinity
   ```

4. **Clonar el repositorio con los scripts del benchmark**:
   - Clona el repositorio donde están los scripts de cada lenguaje.
   ```sh
   git clone https://github.com/EmmanuelUNI/tests.git
   ```

5. **Ejecutar el script de benchmark**:
   - Da permisos de ejecución al script `benchmark.sh` y ejecútalo.
   ```sh
   chmod +x benchmark.sh
   ./benchmark.sh
   ```

## ¿Qué hace el script `benchmark.sh`?

- Construye las imágenes de Docker para cada lenguaje de programación.
- Ejecuta los contenedores con los scripts que calculan el enésimo número Fibonacci.
- Recoge los resultados de tiempo de ejecución y los muestra al final en la terminal.

## Resultados

El script mostrará el tiempo de ejecución de cada lenguaje, permitiéndote comparar el rendimiento de cada uno.
