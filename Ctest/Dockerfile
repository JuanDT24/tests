FROM alpine:latest  
WORKDIR /app  
COPY test.c .  
RUN apk add --no-cache gcc musl-dev  
RUN gcc test.c -o test  
CMD ./test > output.txt && cp output.txt /app/output.txt && cat /app/output.txt