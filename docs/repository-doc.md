# Docker Nginx SSL Terminator

* [Full documentation at GitHub.io](https://24hoursmedia.github.io/docker-nginx-ssl-terminator/){:target="_blank"}
* [Github repository](https://github.com/24HOURSMEDIA/docker-nginx-ssl-terminator){:target="_blank"}

Lightweight ssl terminator configurable with env variables.
Requests to the http port will be redirected to the https port.

Mount your own ssl certificate and key, or use the default (insecure!) keys.

## Environment variables

### Required environment variables:

- BACKEND_HOST backend hostname
- BACKEND_PORT backend portname

### Optional environment variables:

- HTTPS_PORT the https port the server will server (default 443)
- HTTP_PORT the http port (will redirect to the https port) (default 80)

- BACKEND_KEEPALIVE keep alive setting for backend (default: 32)

- SSL_CERT path of certificate mounted in the container (must be chmod 600!) (default /sslcerts/server.crt)
- SSL_CERT_KEY path of the certificate key mounted in the container  (default /sslcerts/server.crt)

## Docker-compose example

```yaml
version: '3.7'

services:

  sslterminator:
    image: 24hoursmedia/nginx-ssl-terminator:1.0-latest
    ports:
      # expose on port 443 on the host, and port 80 for redirecting to 443
      - "443:443"
      - "80:80"
    environment:
      - "BACKEND_HOST=webserver"

  webserver:
    image: nginx:1.19.6-alpine
```