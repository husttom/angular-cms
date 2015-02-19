###
# docker-angular-cms
# This is the docker container for angular-cms
###
FROM ubuntu:14.04
MAINTAINER Jonnie Spratley <jonniespratley@gmail.com>

WORKDIR .
COPY . /angular-cms

RUN apt-get update && apt-get install -y \
  git \
  npm \
  nodejs

RUN ln -s /usr/bin/nodejs /usr/local/bin/node

RUN cd /angular-cms \
	npm install

EXPOSE  1339
CMD ["npm", "start"]