# shellcheck shell=bash

pg_con() {
    if ! cmd_executable "psqld"; then
        echo "not executable"
    fi
}
