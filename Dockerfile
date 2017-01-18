FROM node:latest

MAINTAINER Curtis Hatter <mitchell.hatter@gmail.com>

RUN npm install -g elm elm-test

ENV ELM_ROOT /var/www/elm

RUN mkdir -p ELM_ROOT

WORKDIR $ELM_ROOT

COPY elm-package.json $ELM_ROOT

RUN elm-package install -y

COPY . .

CMD ["elm-reactor", "--address=0.0.0.0", "--port=8000"]
