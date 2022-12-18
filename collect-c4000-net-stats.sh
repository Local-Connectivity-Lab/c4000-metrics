#!/bin/bash
set -euo pipefail

# Collects network stats from CenturyLink C4000 routers (and possibly others)
# and saves them as timestamped json. Requires SSH login as non-root "admin"
# user to be enabled.

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
NET_STATS="$(sshpass -d3 ssh "admin@${HOSTNAME}" "cat /proc/net/dev")"
ARP_TABLE="$(sshpass -d3 ssh "admin@${HOSTNAME}" "cat /proc/net/arp")"
# Close the pipe when done
exec 3>&-

# Format into JSON
NOW=$(date +%s)
NET_STATS_OUTPUT_FILE="${OUTPUT_DIR}/${HOSTNAME}-net-stats-${NOW}.json"
NET_STATS_COLUMNS="interface,rx-bytes,rx-packets,rx-errs,rx-drop,rx-fifo,rx-frame,rx-compressed,rx-multicast,tx-bytes,tx-packets,tx-errs,tx-drop,tx-fifo,tx-colls,tx-carrier,tx-compressed"
# tail +3 strips the column headers so only data is seen
# interface names look like "wlan0:", so use tr to strip the colon
tail +3 <(tr -d ':'  <<< "$NET_STATS") | column --table-columns "$NET_STATS_COLUMNS" --table-name "$NOW" --json > "$NET_STATS_OUTPUT_FILE"
ARP_TABLE_OUTPUT_FILE="${OUTPUT_DIR}/${HOSTNAME}-arp-table-${NOW}.json"
(tail +2 <<< "$ARP_TABLE") | column --table-columns ip,hwtype,flags,hwaddr,mask,dev --table-name "$NOW" --json > "$ARP_TABLE_OUTPUT_FILE"

echo "wrote $NET_STATS_OUTPUT_FILE"
echo "wrote $ARP_TABLE_OUTPUT_FILE"
