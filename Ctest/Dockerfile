FROM alpine:latest  
WORKDIR /app  
COPY main.c .  
RUN apk add --no-cache gcc musl-dev  
RUN gcc main.c -o main  
CMD ./main > c_output.txt && cp c_output.txt /host/c_output.txt && cat /host/c_output.txt