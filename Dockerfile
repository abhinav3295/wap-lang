FROM ubuntu:focal
RUN apt-get update -y
RUN apt-get install curl bash -y

ENV NVM_DIR $HOME/.nvm
ENV NODE_VERSION 18.20.4

RUN mkdir $NVM_DIR
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash

RUN \. $NVM_DIR/nvm.sh && \
         nvm install $NODE_VERSION

ENV PATH $PATH:/root/.local/bin

RUN curl -sSL https://get.wasp-lang.dev/installer.sh | bash