FROM node:16

ENV PORT=3001
ENV DB_HOST=192.168.3.4
ENV DB_PORT=5432
ENV DB_USER=postgres
ENV DB_PASSWORD=postgres
ENV DB_NAME=postgres

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3001
CMD ["npm", "run", "dev"]