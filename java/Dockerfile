FROM openjdk:17-alpine  
WORKDIR /app  
COPY Main.java .  
RUN javac Main.java  
CMD java Main > j_output.txt && cp j_output.txt /host/j_output.txt && cat /host/j_output.txt
