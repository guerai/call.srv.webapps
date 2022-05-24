FROM nginx:1.19.7-alpine
EXPOSE 8080
ENV USER=nginx_user
ENV UID=1000
ENV GID=2000

RUN adduser --disabled-password --gecos "" --home "$(pwd)" --ingroup "$USER" --no-create-home --uid "$UID" "$USER"


# Tell docker that all future commands should run as the appuser user
USER "$USER"

COPY index.html /usr/share/nginx/html/index.html
