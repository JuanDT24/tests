FROM gcc:11
WORKDIR /app  
COPY test.c .  
RUN gcc test.c -o test  
CMD ["./test"]