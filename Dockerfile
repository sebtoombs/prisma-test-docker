# FROM node:12.18.0-alpine3.11 AS base
FROM node:15-buster as base

WORKDIR /usr/src/app
RUN apt update 
  # &&  add bash \
  # && rm -rf /var/cache/apk/*
COPY . . 
RUN yarn install --frozen-lockfile
RUN yarn prisma generate