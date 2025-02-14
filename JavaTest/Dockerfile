FROM openjdk:17-alpine  
WORKDIR /app  
COPY Main.java .  
RUN javac Main.java  
CMD java Main > java_output.txt && cp java_output.txt /host/java_output.txt && cat /host/java_output.txt