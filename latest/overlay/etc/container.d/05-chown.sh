#!/usr/bin/env bash

if [[ "${REGISTRY_SKIP_CHOWN}" != "true" ]]; then
    echo "> chown data directory"
    find /var/lib/registry \( \! -user registry -o \! -group registry \) -print0 | xargs -0 -r chown registry:registry
fi

true
