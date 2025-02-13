FROM node:18-alpine  
WORKDIR /app  
COPY package.json .  
COPY script.js .  
RUN npm install  
CMD node script.js > output.txt && cat output.txt
