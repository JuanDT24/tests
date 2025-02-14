FROM openjdk:17
WORKDIR /app  
COPY test.java .  
RUN javac test.java  
CMD java test > output.txt && cat output.txt
