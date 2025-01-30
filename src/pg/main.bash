# shellcheck shell=bash

PGHOST="${PGHOSTADDR:-${PGHOST:-127.0.0.1}}"
PGPORT="${PGPORT:-5432}"
PGUSER="${PGUSER:-${POSTGRES_USER:-postgres}}"

export PGHOST PGPORT PGUSER

PGPASSWORD="${PGPASSWORD:-${POSTGRES_PASSWORD:-}}" && {
    [[ -n ${PGPASSWORD} ]] && export PGPASSWORD
}

pg_args_input_parse() {
    :
}

pg_main() {
    echo "PG MAIN"
}
