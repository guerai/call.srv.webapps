EXPOSE 8080
FROM nginx:1.19.7-alpine
# Add a new user "john" with user id 8877
RUN useradd -u 1000 calluser

# Change to non-root privilege
USER calluser

COPY index.html /usr/share/nginx/html/index.html
