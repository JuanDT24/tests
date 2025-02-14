FROM openjdk:17-alpine  
WORKDIR /app  
COPY test.java .  
RUN javac test.java  
CMD java test > output.txt && cp output.txt /app/output.txt && cat /app/output.txt