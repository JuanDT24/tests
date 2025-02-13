FROM openjdk:17-alpine  
WORKDIR /app  
COPY Main.java .  
RUN javac Main.java  
CMD java Main > output.txt && cat output.txt