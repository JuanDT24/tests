FROM node:18-alpine  
WORKDIR /app  
COPY package.json .  
COPY script.js .  
RUN npm install  
CMD node script.js > js_output.txt && cat js_output.txt
