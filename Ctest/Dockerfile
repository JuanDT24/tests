FROM gcc:latest 
COPY . /app
WORKDIR /app
RUN gcc -o test test.c
CMD ./test