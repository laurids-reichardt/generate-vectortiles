FROM node:10

VOLUME /tm2source /export
ENV SOURCE_PROJECT_DIR=/tm2source EXPORT_DIR=/export TILELIVE_BIN=tl

COPY . /usr/src/app/
WORKDIR /usr/src/app

RUN npm install

CMD ["/usr/src/app/export-local.sh"]
