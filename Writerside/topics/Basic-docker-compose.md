# Basic docker-compose

This example terminates ssl using the (insecure) default certificate and key. 
It will redirect all http requests to https.


Requests are forwarded to a webserver container, which may for example be an apache server, or an
nginx server with fastcgi.

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
