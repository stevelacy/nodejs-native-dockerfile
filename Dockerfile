FROM node:9.9.0-alpine as base
WORKDIR /app
COPY package.json .
RUN ["npm", "install"]
RUN ["npm", "rebuild"] # for example, not needed

FROM node:9.9.0-alpine
WORKDIR /app
COPY --from=base /app /app
COPY index.js .
ENTRYPOINT ["node"]
CMD ["index.js"]
