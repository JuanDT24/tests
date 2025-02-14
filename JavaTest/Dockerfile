FROM openjdk:17-alpine  
WORKDIR /app  
COPY test.java .  
RUN javac test.java  
CMD java test > output.txt && cp output.txt /host/output.txt && cat /host/output.txt