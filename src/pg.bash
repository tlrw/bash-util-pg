# shellcheck shell=bash

if [[ "${BASH_VERSINFO[0]:-0}" -lt 4 ]]; then
    echo "pg.bash library requires Bash in version 4 or higher, current version: ${BASH_VERSION}"

    exit 1
fi

#

PGHOST="${PGHOSTADDR:-${PGHOST:-127.0.0.1}}"
PGPORT="${PGPORT:-5432}"
PGUSER="${PGUSER:-${POSTGRES_USER:-postgres}}"

export PGHOST PGPORT PGUSER

PGPASSWORD="${PGPASSWORD:-${POSTGRES_PASSWORD:-}}" && {
    [[ -n ${PGPASSWORD} ]] && export PGPASSWORD
}
