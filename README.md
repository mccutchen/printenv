# printenv

Minimal docker container for debugging configuration.

## Usage

```bash
$ docker run mccutchen/printenv:latest
HOME=/root
HOSTNAME=cb53d2dc6efe
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt
```

## Building

```bash
# build and tag image
make

# push image to docker hub
make push
```
