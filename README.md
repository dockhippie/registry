# Registry

[![](https://images.microbadger.com/badges/image/webhippie/registry.svg)](https://microbadger.com/images/webhippie/registry "Get your own image badge on microbadger.com")

These are docker images for [Distribution](https://github.com/docker/distribution) running on an
[Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).


## Versions

* [latest](https://github.com/dockhippie/registry/tree/master)
  available as ```webhippie/registry:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/registry/)


## Volumes

* /var/lib/registry


## Ports

* 5000


## Available environment variables

**None**


## Inherited environment variables

```bash
ENV LOGSTASH_ENABLED false
ENV LOGSTASH_HOST logstash
ENV LOGSTASH_PORT 5043
ENV LOGSTASH_CA /etc/ssl/logstash/certs/ca.pem # As string or filename
ENV LOGSTASH_CERT /etc/ssl/logstash/certs/cert.pem # As string or filename
ENV LOGSTASH_KEY /etc/ssl/logstash/private/cert.pem # As string or filename
ENV LOGSTASH_TIMEOUT 15
ENV LOGSTASH_OPTS
```


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2015-2016 Thomas Boerger <http://www.webhippie.de>
```
