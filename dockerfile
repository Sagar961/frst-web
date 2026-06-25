FROM nginx:latest

COPY web.html /usr/share/nginx/html/web.html

EXPOSE 80
