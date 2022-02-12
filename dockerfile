FROM node:alpine
WORKDIR /app
COPY package.json package-lock.json ./
ARG APP_ENV=test
RUN npm install --frozen-lockfile --APP_ENV=$APP_ENV
COPY . .
CMD ["npm", "test"]
