# Configuration

You can control the configuration of the ssl terminator by passing
environment variables to the container.

## Available environment variables

| Name                | Required | Description                                      | Default                |
|---------------------|----------|--------------------------------------------------|------------------------|
| `HTTPS_PORT`        | No       | The https port the terminator will listen on     | `443`                  |
| `HTTP_PORT`         | No       | The http port the terminator will listen on      | `80`                   |
| `SERVER_NAME`       | No       | The 'server_name' of the ssl terminator          | `sslterminator`        |
|                     |          |                                                  |                        |
| `BACKEND_HOST`      | No       | The hostname of the upstream backend             | `backend`              |
| `BACKEND_PORT`      | No       | The port of the upstream backend                 | `80`                   |
| `BACKEND_KEEPALIVE` | No       | KeepAlive setting for the backend                | `32`                   |
|                     |          |                                                  |                        |
| `SSL_CERT`          | No       | The path of the ssl certificate in the container | `/sslcerts/server.crt` |
| `SSL_CERT_KEY`      | No       | The path of the ssl private key in the container | `/sslcerts/server.key` |
|                     |          |                                                  |                        |
| `TERMINATOR_NAME`   | No       | The name sent in the X-SSL-Terminator header     | `ssl-terminator`       |
|                     |          |                                                  |                        |

