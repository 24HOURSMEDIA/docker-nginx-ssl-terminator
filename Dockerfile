ARG NGINX_IMAGE
ARG TANGO_IMAGE=24hoursmedia/go-templatetango:1.8.0

FROM ${TANGO_IMAGE} AS templatetango

FROM ${NGINX_IMAGE} AS ssl_terminator
COPY --from=templatetango --chmod=775 /tango /usr/local/bin/tango
RUN apk add --no-cache openssl
RUN mkdir /sslcerts && \
    openssl req -x509 -newkey rsa:2048 \
    -keyout /sslcerts/server.key \
    -out /sslcerts/server.crt \
    -days 3650 \
    -nodes \
    -subj "/C=NL/ST=NB/L=BR/O=24hoursmedia.com/OU=DevOps/CN=foo" && \
    chmod 600 /sslcerts/server.key

#COPY --chmod=555 files/defaults.sh /defaults.sh
#COPY files/templates /etc/nginx/templates
#COPY --chmod=555 files/entrypoints.d /docker-entrypoint.d
COPY ./files/config-templates /config-templates
COPY --chmod=775 ./files/docker-entrypoint.d /docker-entrypoint.d
