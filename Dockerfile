FROM iojs:3.0.0
MAINTAINER hycner@gmail.com

COPY . /demo

WORKDIR /demo

RUN npm i gulp -g \
    && npm i \
    && gulp all

ENTRYPOINT npm start

EXPOSE 3001