# registry

[![Docker Build](https://github.com/dockhippie/registry/actions/workflows/docker.yml/badge.svg)](https://github.com/dockhippie/registry/actions/workflows/docker.yml) [![GitHub Repo](https://img.shields.io/badge/github-repo-yellowgreen)](https://github.com/dockhippie/registry)

These are docker images for [Distribution][upstream] running on our
[Alpine Linux image][parent].

## Versions

For the available versions please look at [Docker Hub][dockerhub] or
[Quay][quayio] or check the existing folders within the
[GitHub repository][github].

## Volumes

*  /var/lib/registry

## Ports

*  5000

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

[upstream]: https://github.com/docker/distribution
[parent]: https://github.com/dockhippie/alpine
[dockerhub]: https://hub.docker.com/r/webhippie/registry/tags
[quayio]: https://quay.io/repository/webhippie/registry?tab=tags
[github]: https://github.com/dockhippie/registry
