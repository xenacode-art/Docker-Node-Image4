FROM node

WORKDIR /app

COPY  package.json .

RUN npm install

COPY . .

EXPOSE 80

CMD [ "node","server.js" ]
# docker run -d -p 3000:80 --rm --name feedback-app -v feedback:/app/feedback  feedback-node:volumes