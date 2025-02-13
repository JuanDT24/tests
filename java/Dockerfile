FROM openjdk:17-alpine  
WORKDIR /app  
COPY Main.java .  
RUN javac Main.java  
CMD java Main > j_output.txt && cat j_output.txt