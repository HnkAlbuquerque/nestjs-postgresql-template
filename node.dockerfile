FROM node:20
WORKDIR /usr/src/app
COPY ./src .
RUN npm install
RUN npm run build
RUN chmod 777 ./dist
USER node
CMD ["npm", "run", "start:dev"]