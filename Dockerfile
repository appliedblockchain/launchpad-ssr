FROM node:14.1.0-alpine as build

WORKDIR /src

ADD package* /src/

RUN npm ci

ADD . /src

RUN npm run build

# RUN npm prune --production

FROM node:14.1.0-alpine

WORKDIR /usr/app

COPY --from=build /src/node_modules /usr/app/node_modules
COPY --from=build /src/package.json /usr/app/package.json
COPY --from=build /src/.next        /usr/app/.next

ENV NODE_ENV production

CMD ["/usr/app/node_modules/next/dist/bin/next", "start"]
