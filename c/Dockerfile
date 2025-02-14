FROM gcc:11
WORKDIR /app  
COPY fib.c .  
RUN gcc fib.c -o fib  
CMD ["./fib"]