FROM node:18-alpine  
WORKDIR /app  
COPY package.json .  
COPY test.js .  
RUN npm install  
CMD node test.js > output.txt && cp output.txt /host/output.txt && cat /host/output.txt