# registry

[![Docker Build](https://github.com/dockhippie/registry/workflows/docker/badge.svg)](https://github.com/dockhippie/registry/actions?query=workflow%3Adocker) [![Readme Build](https://github.com/dockhippie/registry/workflows/readme/badge.svg)](https://github.com/dockhippie/registry/actions?query=workflow%3Areadme) [![Docker Size](https://img.shields.io/docker/image-size/webhippie/registry/latest)](#) [![Docker Pulls](https://img.shields.io/docker/pulls/webhippie/registry)](https://hub.docker.com/r/webhippie/registry) [![GitHub Repo](https://img.shields.io/badge/github-repo-yellowgreen)](https://github.com/dockhippie/registry)

These are docker images for [Distribution](https://github.com/docker/distribution) running on our [Alpine Linux image](https://github.com/dockhippie/alpine).

## Versions

For the available versions please look at [Docker Hub](https://hub.docker.com/r/webhippie/registry/tags) or [Quay](https://quay.io/repository/webhippie/registry?tab=tags) or check the existing folders within the [GitHub repository](https://github.com/dockhippie/registry).

## Volumes

* /var/lib/registry

## Ports

* 5000

## Available environment variables

```console
REGISTRY_HEALTHCHECK_CODE = 200
REGISTRY_HEALTHCHECK_URL = http://localhost:5000
REGISTRY_SKIP_CHOWN = false
```

## Inherited environment variables

*  [webhippie/alpine](https://github.com/dockhippie/alpine#available-environment-variables)

## Contributing

Fork -> Patch -> Push -> Pull Request

## Authors

*  [Thomas Boerger](https://github.com/tboerger)

## License

MIT

## Copyright

```console
Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
```
