EXPOSE 8080
RUN useradd −u 1000 nonroot
USER nonroot
FROM nginx:1.19.7-alpine
COPY index.html /usr/share/nginx/html/index.html
