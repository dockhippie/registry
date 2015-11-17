FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

ENV REGISTRY_PATH github.com/docker/distribution
ENV REGISTRY_REPO https://${REGISTRY_PATH}.git
ENV REGISTRY_BRANCH master

ENV GOPATH /usr:/usr/src/${REGISTRY_PATH}/Godeps/_workspace

RUN apk update && \
  apk add \
    build-base \
    git \
    mercurial \
    go@community && \
  git clone -b ${REGISTRY_BRANCH} ${REGISTRY_REPO} /usr/src/${REGISTRY_PATH} && \
  cd /usr/src/${REGISTRY_PATH} && \
  go get -u github.com/tools/godep && \
  godep go install ${REGISTRY_PATH} && \
  apk del build-base git mercurial go && \
  rm -rf /var/cache/apk/* && \
  rm -r \
    /usr/src/* \
    /usr/pkg/* \
    /usr/lib/go \
    /usr/bin/godep

ADD rootfs /
EXPOSE 5000

WORKDIR /root
CMD ["/bin/s6-svscan", "/etc/s6"]
