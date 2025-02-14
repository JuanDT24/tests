FROM node:18-alpine  
WORKDIR /app  
COPY package.json .  
COPY script.js .  
RUN npm install  
CMD node script.js > js_output.txt && cp js_output.txt /host/js_output.txt && cat /host/js_output.txt
