FROM node:14-alpine3.12
RUN mkdir /app
WORKDIR /app
COPY . /app
RUN npm install
RUN npm run build
RUN rm -rf /var/www/html/*
COPY build/* /var/www/html/
EXPOSE 3000
CMD ["npm", "start"]
