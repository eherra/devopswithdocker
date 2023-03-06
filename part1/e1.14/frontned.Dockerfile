FROM node:16.3.0-alpine

WORKDIR /usr/src/app
COPY . . 

RUN npm install
RUN REACT_APP_BACKEND_URL=http://localhost:8080 npm run build
RUN npm install -g serve
 
EXPOSE 4999

CMD ["serve", "-s", "-l", "4999", "build"]