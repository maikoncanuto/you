FROM node:18-alpine As build
WORKDIR /app
COPY . .
RUN npm ci
EXPOSE 3000
CMD [ "node", "dist/main.js" ]

FROM node:18-alpine As production
WORKDIR /app
COPY . .
RUN npm ci
EXPOSE 3000
CMD [ "node", "dist/main.js" ]