FROM python:3.10-alpine  
WORKDIR /app  
COPY script.py .  
CMD python script.py > python_output.txt && cp python_output.txt /host/python_output.txt && cat /host/python_output.txt