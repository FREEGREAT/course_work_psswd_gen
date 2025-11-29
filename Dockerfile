FROM node:18-alpine as build-step
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
RUN ng serve

FROM nginx:alpine
COPY --from=build-step /app/dist/* /usr/share/nginx/html/
EXPOSE 80