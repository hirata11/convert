FROM node:16
EXPOSE 8080
WORKDIR /app
COPY . .
RUN npm install
CMD ["node", "server.js"] 