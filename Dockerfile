FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

ENV DISCOVERY_TYPE etcd
ENV DISCOVERY_HOST http://127.0.0.1
ENV DISCOVERY_PORT 4001
ENV DISCOVERY_INTERVAL 30
ENV DISCOVERY_PREFIX /

ENV REGISTRY_PATH github.com/docker/distribution
ENV REGISTRY_REPO https://${REGISTRY_PATH}.git
ENV REGISTRY_BRANCH master

ENV GOPATH /usr:/usr/src/${REGISTRY_PATH}/Godeps/_workspace

RUN apk-install build-base git mercurial go && \
  git clone -b ${REGISTRY_BRANCH} ${REGISTRY_REPO} /usr/src/${REGISTRY_PATH} && \
  go get ${REGISTRY_PATH}/... && \
  go install ${REGISTRY_PATH} && \
  apk update && \
  apk del build-base git mercurial go && \
  rm -rf /var/cache/apk/* && \
  rm -r /usr/src/*

ADD rootfs /
EXPOSE 5000

WORKDIR /root
ENTRYPOINT ["/usr/bin/s6-svscan","/etc/s6"]
CMD []
