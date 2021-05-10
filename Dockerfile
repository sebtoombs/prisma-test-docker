FROM node:15-buster as base

# FROM node:12.18.0-alpine3.11 AS base
WORKDIR /usr/src/app

RUN apt update

# RUN apk update \ 
#   && apk add bash \
#   && rm -rf /var/cache/apk/*
COPY . . 
RUN chmod +x ./scripts/wait-for-it.sh
RUN yarn install --frozen-lockfile
RUN yarn prisma generate