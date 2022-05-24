EXPOSE 8080
#RUN groupadd -r imgproxy && useradd -r -u 1000 -g imgproxy imgproxy
#USER 1000

RUN useradd −u 1000 nonroot

#Run Container as nonroot
USER nonroot

FROM nginx:1.19.7-alpine
COPY index.html /usr/share/nginx/html/index.html
