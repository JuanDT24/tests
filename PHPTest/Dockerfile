FROM php:8.2-cli-alpine  
WORKDIR /app  
COPY test.php .  
CMD php test.php > output.txt && cp output.txt /host/output.txt && cat /host/output.txt