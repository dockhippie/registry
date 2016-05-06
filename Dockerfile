FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

ENV REGISTRY_PATH github.com/docker/distribution
ENV REGISTRY_REPO https://${REGISTRY_PATH}.git
ENV REGISTRY_BRANCH master

ENV GOPATH /usr/local:/usr/src/${REGISTRY_PATH}/Godeps/_workspace

RUN apk update && \
  apk add \
    build-base \
    go \
    git \
    mercurial && \
  git clone -b ${REGISTRY_BRANCH} ${REGISTRY_REPO} /usr/local/src/${REGISTRY_PATH} && \
  cd /usr/local/src/${REGISTRY_PATH} && \
  go get -u github.com/tools/godep && \
  godep go install ${REGISTRY_PATH} && \
  cp -f \
    /usr/local/bin/registry \
    /usr/bin/ && \
  apk del \
    build-base \
    go \
    git \
    mercurial && \
  rm -rf \
    /var/cache/apk/* \
    /usr/local/*

VOLUME ["/var/lib/registry"]

ADD rootfs /
EXPOSE 5000

WORKDIR /root
CMD ["/bin/s6-svscan", "/etc/s6"]
