# shellcheck shell=bash

PGHOST="${PGHOSTADDR:-${PGHOST:-127.0.0.1}}"
PGPORT="${PGPORT:-5432}"
PGUSER="${PGUSER:-${POSTGRES_USER:-postgres}}"

export PGHOST PGPORT PGUSER

PGPASSWORD="${PGPASSWORD:-${POSTGRES_PASSWORD:-}}" && {
    [[ -n ${PGPASSWORD} ]] && export PGPASSWORD
}

PGDATABASE="${PGDATABASE:-${POSTGRES_DB:-}}" && {
    [[ -n ${PGDATABASE} ]] && export PGDATABASE
}

PG_BACKUPS_DIR="${POSTGRES_PGBACKUPS_DIR:-/var/backups/postgresql}"
