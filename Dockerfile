FROM node:12.16.3

COPY . /workspace
WORKDIR /workspace
RUN npm install

EXPOSE 3000

CMD npm start