FROM node:12.18.1-alpine3.11 as builder

ADD ./plugins/kuzzle-postgres /kuzzle-postgres
WORKDIR /kuzzle-postgres
RUN npm install --production

FROM kuzzleio/kuzzle:2.5.1

COPY --from=builder /kuzzle-postgres /app/plugins/enabled/kuzzle-postgres
