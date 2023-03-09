# Build 1
FROM node:16.3.0-alpine AS build

WORKDIR /app
COPY package*.json ./

COPY . .
RUN npm ci && \
    npm run build

# Build 2
FROM node:16.3.0-alpine
RUN adduser --system --no-create-home nonroot

WORKDIR /app
COPY --from=build ./app .

COPY package*.json .
RUN npm install --production
RUN npm install -g serve

USER nonroot

EXPOSE 4999

CMD ["serve", "-s", "-l", "4999", "build"]