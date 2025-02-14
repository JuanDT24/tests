FROM gcc:11
WORKDIR /app  
COPY test.c .  
RUN apk add --no-cache gcc musl-dev  
RUN gcc test.c -o test  
CMD ["./test"]