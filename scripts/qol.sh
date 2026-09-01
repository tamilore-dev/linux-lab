#!/bin/bash
set -euo pipefail
IFS=$'\n\t'   # safer word-splitting — see note below

# ---- logging ----
log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*" >&2
}

# ---- usage / arg check ----
usage() {
    echo "Usage: $0 <source> <destination>" >&2
    exit 1
}
[ $# -ne 2 ] && usage

SOURCE="$1"
DEST="$2"

# ---- validate inputs, not just count ----
[ -e "$SOURCE" ] || { log "Error: source '$SOURCE' does not exist"; exit 1; }
[ -d "$DEST" ]   || { log "Error: destination '$DEST' is not a directory"; exit 1; }

# ---- dependency check ----
command -v rsync &> /dev/null || { log "Error: rsync is not installed"; exit 1; }

# ---- trap for cleanup on exit/error ----
cleanup() {
    log "Script exiting (status $?)"
}
trap cleanup EXIT

# ---- do the work ----
log "Starting backup"
rsync -a "$SOURCE" "$DEST"
log "Backup complete"
