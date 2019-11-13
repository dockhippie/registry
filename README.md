# Registry

[![Build Status](https://cloud.drone.io/api/badges/dockhippie/registry/status.svg)](https://cloud.drone.io/dockhippie/registry)
[![](https://images.microbadger.com/badges/image/webhippie/registry.svg)](https://microbadger.com/images/webhippie/registry "Get your own image badge on microbadger.com")

These are docker images for [Distribution](https://github.com/docker/distribution) running on an [Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).


## Versions

* [latest](./latest) available as `webhippie/registry:latest`


## Volumes

* /var/lib/registry


## Ports

* 5000


## Available environment variables

```bash
REGISTRY_HEALTHCHECK_CODE = 200
REGISTRY_HEALTHCHECK_URL = http://localhost:5000
REGISTRY_SKIP_CHOWN = false
```


## Inherited environment variables

* [webhippie/alpine](https://github.com/dockhippie/alpine#available-environment-variables)


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
```
