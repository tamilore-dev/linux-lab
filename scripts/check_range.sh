#!/usr/bin/env bash
set -euo pipefail

usage() {
    echo "Usage: $0 <integer> <min-max>" >&2
    exit 1
}

[[ $# -ne 2 ]] && usage
[[ "$1" =~ ^-?[0-9]+$ ]] || usage
[[ "$2" =~ ^-?[0-9]+--?[0-9]+$ ]] || usage

min="${2%-*}"
max="${2#*-}"

[[ "$min" -lt "$max" ]] || usage
