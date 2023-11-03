FROM node:20.4-bookworm-slim
WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN npm install tomphttp/bare-server-node@1.2.5 
RUN npm install titaniumnetwork-dev/ultraviolet@1.0.11
RUN npm ci
EXPOSE 3000
CMD ["npm", "start"]
