FROM mhart/alpine-node:10.7

MAINTAINER chris@apsis.io

RUN apk add --no-cache --update \
    alpine-sdk \
    postgresql-client \
    postgresql-dev

ENV APP_HOME /ui
WORKDIR $APP_HOME

COPY package.json package-lock.json $APP_HOME/

RUN npm install