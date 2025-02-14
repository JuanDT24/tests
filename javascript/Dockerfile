FROM node:18-alpine  
WORKDIR /app  
COPY package.json .  
COPY script.js .  
RUN npm install  
CMD node script.js > javascript_output.txt && cp javascript_output.txt /host/javascript_output.txt && cat /host/javascript_output.txt
