FROM php:8.2-cli-alpine  
WORKDIR /app  
COPY script.php .  
CMD php script.php > php_output.txt && cp php_output.txt /host/php_output.txt && cat /host/php_output.txt