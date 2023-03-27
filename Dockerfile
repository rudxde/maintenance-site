FROM nginx:alpine
ARG APP
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./html/ /usr/share/nginx/html


HEALTHCHECK --interval=30s --timeout=3s CMD wget -O /dev/null http://localhost/health || exit 1