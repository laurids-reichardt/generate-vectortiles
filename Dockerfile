FROM node:10

WORKDIR /usr/src/app
RUN npm install -g \
  tl@0.10.2 \
  mapnik@4.0.2 \
  @mapbox/mbtiles@0.10.0 \
  @mapbox/tilelive@6.0.0 \
  tilelive-tmsource@0.8.2 \
  @mapbox/tilelive-vector@4.2.0 \
  @mapbox/tilelive-bridge@3.1.1 \
  @mapbox/tilelive-mapnik@1.0.0

VOLUME /tm2source /export
ENV SOURCE_PROJECT_DIR=/tm2source EXPORT_DIR=/export TILELIVE_BIN=tl

COPY . /usr/src/app/
CMD ["/usr/src/app/export-local.sh"]
