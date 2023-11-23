# SSL Certificates

By default, an insecure SSL certificate is used, which is generated at build time. 
This is fine for testing, but you should use your own SSL certificate for production.

## Using your own SSL certificate

To use your own SSL certificate, you need to mount the certificate and key files into the container.

```bash
docker run -d \
    -v /path/to/your/cert.crt:/sslcerts/server.crt \
    -v /path/to/your/cert.key:/sslcerts/server.key \
    -p 80:80 \
    -p 443:443 \
    --name sslterminator \
    24hoursmedia/nginx-ssl-terminator
```

Docker compose example:

```yaml
version: '3.3'
services:
    ssl_terminator:
        image: 24hoursmedia/nginx-ssl-terminator
        ports:
        - "80:80"
        - "443:443"
        volumes:
        - /path/to/your/cert.crt:/sslcerts/server.crt
        - /path/to/your/cert.key:/sslcerts/server.key
```