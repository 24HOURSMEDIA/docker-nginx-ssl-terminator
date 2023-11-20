#!/bin/sh

set -a
export HTTPS_PORT=${HTTPS_PORT:-443}
export HTTP_PORT=${HTTP_PORT:-80}

export BACKEND_HOST=${BACKEND_HOST:-backend}
export BACKEND_PORT=${BACKEND_PORT:-80}
export BACKEND_KEEPALIVE=${BACKEND_KEEPALIVE:-32}

export SSL_CERT=${SSL_CERT:-"/sslcerts/server.crt"}
export SSL_CERT_KEY=${SSL_CERT_KEY:-"/sslcerts/server.key"}
export SERVER_NAME=sslterminator

export TERMINATOR_NAME=${TERMINATOR_NAME:-"ssl-terminator"}

