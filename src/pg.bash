# shellcheck shell=bash

if [[ "${BASH_VERSINFO[0]:-0}" -lt 4 ]]; then
    echo "pg.bash library requires Bash in version 4 or higher, current version: ${BASH_VERSION}"

    exit 1
fi

