#!/usr/bin/env bash
set -euo pipefail
[[ $# -ne 2 ]] && usage
[[ "$1" =~ ^-?[0-9]+$ ]] || usage
[[ "$2" =~ ^-?[0-9]+--?[0-9]+$ ]] || usage

min="${2%-*}"
max="${2#*-}"

[[ "$min" -lt "$max" ]] || usage
