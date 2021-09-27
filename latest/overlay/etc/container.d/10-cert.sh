#!/usr/bin/env bash

if [[ -n "${REGISTRY_AUTH_TOKEN_ROOTCERTBUNDLE}" ]]; then
    chgrp registry ${REGISTRY_AUTH_TOKEN_ROOTCERTBUNDLE}
    chmod 640 ${REGISTRY_AUTH_TOKEN_ROOTCERTBUNDLE}
fi

true
