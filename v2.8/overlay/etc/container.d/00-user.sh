#!/usr/bin/env bash

if [[ ! "$(id -g registry)" =~ "${PGID}" ]]; then
    echo "> enforcing group id"
    groupmod -o -g ${PGID} registry
fi

if [[ ! "$(id -u registry)" =~ "${PGID}" ]]; then
    echo "> enforcing user id"
    usermod -o -u ${PUID} registry
fi

true
