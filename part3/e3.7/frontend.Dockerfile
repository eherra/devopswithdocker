FROM node:16.3.0-alpine

WORKDIR /usr/src/app
COPY . .

RUN npm install && \
    npm run build && \
    npm install -g serve && \
    adduser --system --no-create-home nonroot
    
USER nonroot

CMD ["serve", "-s", "-l", "4999", "build"]