FROM python:3.10-alpine  
WORKDIR /app  
COPY test.py .  
CMD python test.py > output.txt && cp output.txt /host/output.txt && cat /host/output.txt