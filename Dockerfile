FROM nginx:latest
RUN sed -i 's/nginx/shurt/g' /usr/share/nginx/html/index.html
EXPOSE 80
