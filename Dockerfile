FROM node

WORKDIR /app

COPY  package.json .

RUN npm install

COPY . .

EXPOSE 80

CMD [ "node","server.js" ]
# docker run -d -p 3000:80 --rm --name feedback-app -v feedback:/app/feedback  feedback-node:volumes

# command for bindmount : docker run -d -p 3000:80 --rm --name feedback-app -v feedback:/app/feedback -v "C:\Users\kajao\Desktop\Projects\Devops\Docker\Image4:/app" feedback-node:volumes

# command to make docker install all dependencies in the container to our bindmount is :   docker run -d -p 3000:80 --rm --name feedback-app -v feedback:/app/feedback -v "C:\Users\kajao\Desktop\Projects\Devops\Docker\Image4:app" -v /app/node_modules feedback-node:volumes

