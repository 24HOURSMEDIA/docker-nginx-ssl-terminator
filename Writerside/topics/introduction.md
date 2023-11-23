# Introduction

Lightweight SSL terminator, ready to use in docker-compose or a docker swarm stack.
Terminates SSL and forwards requests to a backend.

## Features

* https termination for a single host
* supports http/2
* uses a default insecure certificate for testing if you don't provide your own
* configure with env vars
* image size only 9mb compressed, memory usage about 7mb

