FROM python:3.10-alpine  
WORKDIR /app  
COPY script.py .  
CMD python script.py > py_output.txt && cp py_output.txt /host/py_output.txt && cat /host/py_output.txt
