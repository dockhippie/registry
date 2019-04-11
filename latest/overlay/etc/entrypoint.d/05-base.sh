#!/usr/bin/env bash

declare -x REGISTRY_SKIP_CHOWN
[[ -z "${REGISTRY_SKIP_CHOWN}" ]] && REGISTRY_SKIP_CHOWN="false"

declare -x REGISTRY_HEALTHCHECK_URL
[[ -z "${REGISTRY_HEALTHCHECK_URL}" ]] && REGISTRY_HEALTHCHECK_URL="http://localhost:5000"

declare -x REGISTRY_HEALTHCHECK_CODE
[[ -z "${REGISTRY_HEALTHCHECK_CODE}" ]] && REGISTRY_HEALTHCHECK_CODE="200"
