FROM alpine:latest

MAINTAINER Jegadeesan Muthusamy "jega4u@gmail.com"
LABEL description='Heroku CLI packaged on alpine linux'

# Commands
RUN apk update && apk upgrade && apk add --no-cache git npm
RUN npm install -g heroku
ENTRYPOINT ["/usr/local/bin/heroku"]


