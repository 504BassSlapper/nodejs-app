FROM alpine 
RUN apk add --update nodejs npm
COPY . /app
WORKDIR /app
RUN npm install 
EXPOSE 3000

ENTRYPOINT ["node", "app.js"]
