#!/bin/bash
set -euo pipefail

# Collects network status CenturyLink C4000XG routers (and possibly others) and
# saves them as timestamped json. Requires SSH login as non-root "admin" user
# to be enabled.

HOSTNAME="my-hostname"
PASSWORD="my-password"
OUTPUT_DIR="/tmp/network-stats/${HOSTNAME}"

mkdir -p "$OUTPUT_DIR"
$(sshpass -V > /dev/null 2>&1) || { echo "'sshpass' is required to run this script" >&2; exit 1; }
$(column -h | grep -q -- '--json' > /dev/null 2>&1) || { echo "a version of 'column' supporting JSON output is required to run this script" >&2; exit 1; }

# This convoluted procedure recommended by sshpass for security's sake:
# Create a pipe
PIPE=$(mktemp -u)
mkfifo -m 600 $PIPE
# Attach it to file descriptior 3
exec 3<>$PIPE
# Delete the directory entry
rm $PIPE
# Write your password in the pipe
 echo "$PASSWORD" >&3
# Connect with sshpass -d
STATS="$(sshpass -d3 ssh "admin@${HOSTNAME}" "cat /proc/net/dev")"
# Close the pipe when done
exec 3>&-

# Format into JSON
NOW=$(date +%s)
OUTPUT_FILE="${OUTPUT_DIR}/${HOSTNAME}-${NOW}.json"
COLUMNS="interface,rx-bytes,rx-packets,rx-errs,rx-drop,rx-fifo,rx-frame,rx-compressed,rx-multicast,tx-bytes,tx-packets,tx-errs,tx-drop,tx-fifo,tx-colls,tx-carrier,tx-compressed"
# tail +3 strips the column headers so only data is seen
# interface names look like "wlan0:", so use tr to strip the colon
tail +3 <(tr -d ':'  <<< "$STATS") | column --table-columns "$COLUMNS" --table-name "$NOW" --json > "$OUTPUT_FILE"

echo "wrote $OUTPUT_FILE"
