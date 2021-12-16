FROM node:14-alpine as builder
WORKDIR /app
ADD . .
RUN echo hoge
RUN npm install && \
    npm run build && \
    npm run export

FROM nginx:alpine
COPY --from=builder /app/out /usr/share/nginx/html
