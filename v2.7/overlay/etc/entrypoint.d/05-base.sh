#!/usr/bin/env bash

declare -x REGISTRY_SKIP_CHOWN
[[ -z "${REGISTRY_SKIP_CHOWN}" ]] && REGISTRY_SKIP_CHOWN="false"
