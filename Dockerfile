EXPOSE 8080
FROM nginx:1.19.7-alpine
#FROM nginx-unprivileged:1.21
# Add a new user "john" with user id 8877
#RUN adduser -D -H -u 1000 -s /bin/bash calluser -G www-data
# Change to non-root privilege
#USER calluser

COPY index.html /usr/share/nginx/html/index.html
