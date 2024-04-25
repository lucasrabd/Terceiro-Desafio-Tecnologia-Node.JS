FROM node:lts-alpine3.19

USER node

WORKDIR /app-money

COPY index.js .

EXPOSE 3000

CMD ["node", "index.js"]
