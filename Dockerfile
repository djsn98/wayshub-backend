FROM node:12-alpine
WORKDIR /app
COPY . .
RUN npm install
RUN npm i -g sequelize-cli
EXPOSE 5000
CMD ["sh", "-c", "npx sequelize db:create && npx sequelize db:migrate && npm start"]
