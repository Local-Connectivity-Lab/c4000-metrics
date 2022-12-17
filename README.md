# Collecting stats
Use the script `collect-c4000-net-stats.sh` to collect metrics. Fill out the
`HOSTNAME` and `PASSWORD` fields in the shell script with the hostname of the
C4000 and the password of the admin user. This is obviously not very secure, so
exercise caution; set the permissions of the script tightly and limit access to
the machine containing the plaintext credentials.

The collected metrics will be saved as JSON-formatted text in directory set in
the `OUTPUT_DIR` environment variable. The filename is the hostname
concatenated with the data collection time in UNIX epoch seconds, eg.
`my-host.net-1671260819.json`.

The data within the files looks like:

```json
{
   "1671260819": [
      {
         "interface": "wlan0",
         "rx-bytes": "0",
         "rx-packets": "0",
         "rx-errs": "0",
         "rx-drop": "0",
         "rx-fifo": "0",
         "rx-frame": "0",
         "rx-compressed": "0",
         "rx-multicast": "0",
         "tx-bytes": "0",
         "tx-packets": "0",
         "tx-errs": "0",
         "tx-drop": "0",
         "tx-fifo": "0",
         "tx-colls": "0",
         "tx-carrier": "0",
         "tx-compressed": "0"
      },{
         "interface": "loopdev0",
         "rx-bytes": "0",
         "rx-packets": "0",
         "rx-errs": "0",
         "rx-drop": "0",
         "rx-fifo": "0",
         "rx-frame": "0",
         "rx-compressed": "0",
         "rx-multicast": "0",
         "tx-bytes": "0",
         "tx-packets": "0",
         "tx-errs": "0",
         "tx-drop": "0",
         "tx-fifo": "0",
         "tx-colls": "0",
         "tx-carrier": "0",
         "tx-compressed": "0"
      },{
         "interface": "br-lan",
         "rx-bytes": "1177785841",
         "rx-packets": "5054349",
         "rx-errs": "0",
         "rx-drop": "0",
         "rx-fifo": "0",
         "rx-frame": "0",
         "rx-compressed": "0",
         "rx-multicast": "32746",
         "tx-bytes": "2361578186",
         "tx-packets": "5191231",
         "tx-errs": "0",
         "tx-drop": "0",
         "tx-fifo": "0",
         "tx-colls": "0",
         "tx-carrier": "0",
         "tx-compressed": "0"
      },{
         "interface": "sit0",
         "rx-bytes": "0",
         "rx-packets": "0",
         "rx-errs": "0",
         "rx-drop": "0",
         "rx-fifo": "0",
         "rx-frame": "0",
         "rx-compressed": "0",
         "rx-multicast": "0",
         "tx-bytes": "0",
         "tx-packets": "0",
         "tx-errs": "0",
         "tx-drop": "0",
         "tx-fifo": "0",
         "tx-colls": "0",
         "tx-carrier": "0",
         "tx-compressed": "0"
      },{
         "interface": "eth0_0.201",
         "rx-bytes": "2194031168",
         "rx-packets": "485829956",
         "rx-errs": "0",
         "rx-drop": "0",
         "rx-fifo": "0",
         "rx-frame": "0",
         "rx-compressed": "0",
         "rx-multicast": "0",
         "tx-bytes": "1220899186",
         "tx-packets": "145170715",
         "tx-errs": "0",
         "tx-drop": "0",
         "tx-fifo": "0",
         "tx-colls": "0",
         "tx-carrier": "0",
         "tx-compressed": "0"
      },{
         "interface": "eth0_4",
         "rx-bytes": "14729439516",
         "rx-packets": "108888085",
         "rx-errs": "0",
         "rx-drop": "5002",
         "rx-fifo": "0",
         "rx-frame": "0",
         "rx-compressed": "0",
         "rx-multicast": "0",
         "tx-bytes": "618276262193",
         "tx-packets": "429005374",
         "tx-errs": "0",
         "tx-drop": "0",
         "tx-fifo": "0",
         "tx-colls": "0",
         "tx-carrier": "0",
         "tx-compressed": "0"
      },{
         "interface": "eth0_1",
         "rx-bytes": "0",
         "rx-packets": "0",
         "rx-errs": "0",
         "rx-drop": "0",
         "rx-fifo": "0",
         "rx-frame": "0",
         "rx-compressed": "0",
         "rx-multicast": "0",
         "tx-bytes": "0",
         "tx-packets": "0",
         "tx-errs": "0",
         "tx-drop": "0",
         "tx-fifo": "0",
         "tx-colls": "0",
         "tx-carrier": "0",
         "tx-compressed": "0"
      },{
         "interface": "wlan2.3",
         "rx-bytes": "0",
         "rx-packets": "0",
         "rx-errs": "0",
         "rx-drop": "0",
         "rx-fifo": "0",
         "rx-frame": "0",
         "rx-compressed": "0",
         "rx-multicast": "0",
         "tx-bytes": "0",
         "tx-packets": "0",
         "tx-errs": "0",
         "tx-drop": "0",
         "tx-fifo": "0",
         "tx-colls": "0",
         "tx-carrier": "0",
         "tx-compressed": "0"
      },{
         "interface": "lo",
         "rx-bytes": "38825359",
         "rx-packets": "174134",
         "rx-errs": "0",
         "rx-drop": "0",
         "rx-fifo": "0",
         "rx-frame": "0",
         "rx-compressed": "0",
         "rx-multicast": "0",
         "tx-bytes": "38825359",
         "tx-packets": "174134",
         "tx-errs": "0",
         "tx-drop": "0",
         "tx-fifo": "0",
         "tx-colls": "0",
         "tx-carrier": "0",
         "tx-compressed": "0"
      },{
         "interface": "ifb0",
         "rx-bytes": "0",
         "rx-packets": "0",
         "rx-errs": "0",
         "rx-drop": "0",
         "rx-fifo": "0",
         "rx-frame": "0",
         "rx-compressed": "0",
         "rx-multicast": "0",
         "tx-bytes": "0",
         "tx-packets": "0",
         "tx-errs": "0",
         "tx-drop": "0",
         "tx-fifo": "0",
         "tx-colls": "0",
         "tx-carrier": "0",
         "tx-compressed": "0"
      },{
         "interface": "pppoe-wan3",
         "rx-bytes": "2153853850",
         "rx-packets": "485789735",
         "rx-errs": "0",
         "rx-drop": "0",
         "rx-fifo": "0",
         "rx-frame": "0",
         "rx-compressed": "0",
         "rx-multicast": "0",
         "tx-bytes": "1104297483",
         "tx-packets": "145130687",
         "tx-errs": "0",
         "tx-drop": "0",
         "tx-fifo": "0",
         "tx-colls": "0",
         "tx-carrier": "0",
         "tx-compressed": "0"
      },{
         "interface": "eth0_2",
         "rx-bytes": "0",
         "rx-packets": "0",
         "rx-errs": "0",
         "rx-drop": "0",
         "rx-fifo": "0",
         "rx-frame": "0",
         "rx-compressed": "0",
         "rx-multicast": "0",
         "tx-bytes": "0",
         "tx-packets": "0",
         "tx-errs": "0",
         "tx-drop": "0",
         "tx-fifo": "0",
         "tx-colls": "0",
         "tx-carrier": "0",
         "tx-compressed": "0"
      },{
         "interface": "eth1",
         "rx-bytes": "0",
         "rx-packets": "0",
         "rx-errs": "0",
         "rx-drop": "0",
         "rx-fifo": "0",
         "rx-frame": "0",
         "rx-compressed": "0",
         "rx-multicast": "0",
         "tx-bytes": "846",
         "tx-packets": "7",
         "tx-errs": "0",
         "tx-drop": "0",
         "tx-fifo": "0",
         "tx-colls": "0",
         "tx-carrier": "0",
         "tx-compressed": "0"
      },{
         "interface": "wlan0.2",
         "rx-bytes": "474988744",
         "rx-packets": "4464270",
         "rx-errs": "0",
         "rx-drop": "0",
         "rx-fifo": "0",
         "rx-frame": "0",
         "rx-compressed": "0",
         "rx-multicast": "9020",
         "tx-bytes": "21613588576",
         "tx-packets": "15253445",
         "tx-errs": "0",
         "tx-drop": "0",
         "tx-fifo": "0",
         "tx-colls": "0",
         "tx-carrier": "0",
         "tx-compressed": "0"
      },{
         "interface": "teql0",
         "rx-bytes": "0",
         "rx-packets": "0",
         "rx-errs": "0",
         "rx-drop": "0",
         "rx-fifo": "0",
         "rx-frame": "0",
         "rx-compressed": "0",
         "rx-multicast": "0",
         "tx-bytes": "0",
         "tx-packets": "0",
         "tx-errs": "0",
         "tx-drop": "0",
         "tx-fifo": "0",
         "tx-colls": "0",
         "tx-carrier": "0",
         "tx-compressed": "0"
      },{
         "interface": "wlan2",
         "rx-bytes": "0",
         "rx-packets": "0",
         "rx-errs": "0",
         "rx-drop": "0",
         "rx-fifo": "0",
         "rx-frame": "0",
         "rx-compressed": "0",
         "rx-multicast": "0",
         "tx-bytes": "0",
         "tx-packets": "0",
         "tx-errs": "0",
         "tx-drop": "0",
         "tx-fifo": "0",
         "tx-colls": "0",
         "tx-carrier": "0",
         "tx-compressed": "0"
      },{
         "interface": "gre0",
         "rx-bytes": "0",
         "rx-packets": "0",
         "rx-errs": "0",
         "rx-drop": "0",
         "rx-fifo": "0",
         "rx-frame": "0",
         "rx-compressed": "0",
         "rx-multicast": "0",
         "tx-bytes": "0",
         "tx-packets": "0",
         "tx-errs": "0",
         "tx-drop": "0",
         "tx-fifo": "0",
         "tx-colls": "0",
         "tx-carrier": "0",
         "tx-compressed": "0"
      },{
         "interface": "dummy0",
         "rx-bytes": "0",
         "rx-packets": "0",
         "rx-errs": "0",
         "rx-drop": "0",
         "rx-fifo": "0",
         "rx-frame": "0",
         "rx-compressed": "0",
         "rx-multicast": "0",
         "tx-bytes": "0",
         "tx-packets": "0",
         "tx-errs": "0",
         "tx-drop": "0",
         "tx-fifo": "0",
         "tx-colls": "0",
         "tx-carrier": "0",
         "tx-compressed": "0"
      },{
         "interface": "ip6gre0",
         "rx-bytes": "0",
         "rx-packets": "0",
         "rx-errs": "0",
         "rx-drop": "0",
         "rx-fifo": "0",
         "rx-frame": "0",
         "rx-compressed": "0",
         "rx-multicast": "0",
         "tx-bytes": "0",
         "tx-packets": "0",
         "tx-errs": "0",
         "tx-drop": "0",
         "tx-fifo": "0",
         "tx-colls": "0",
         "tx-carrier": "0",
         "tx-compressed": "0"
      },{
         "interface": "lite0",
         "rx-bytes": "0",
         "rx-packets": "0",
         "rx-errs": "0",
         "rx-drop": "0",
         "rx-fifo": "0",
         "rx-frame": "0",
         "rx-compressed": "0",
         "rx-multicast": "0",
         "tx-bytes": "0",
         "tx-packets": "0",
         "tx-errs": "0",
         "tx-drop": "0",
         "tx-fifo": "0",
         "tx-colls": "0",
         "tx-carrier": "0",
         "tx-compressed": "0"
      },{
         "interface": "gretap0",
         "rx-bytes": "0",
         "rx-packets": "0",
         "rx-errs": "0",
         "rx-drop": "0",
         "rx-fifo": "0",
         "rx-frame": "0",
         "rx-compressed": "0",
         "rx-multicast": "0",
         "tx-bytes": "0",
         "tx-packets": "0",
         "tx-errs": "0",
         "tx-drop": "0",
         "tx-fifo": "0",
         "tx-colls": "0",
         "tx-carrier": "0",
         "tx-compressed": "0"
      },{
         "interface": "ip6tnl0",
         "rx-bytes": "0",
         "rx-packets": "0",
         "rx-errs": "0",
         "rx-drop": "0",
         "rx-fifo": "0",
         "rx-frame": "0",
         "rx-compressed": "0",
         "rx-multicast": "0",
         "tx-bytes": "0",
         "tx-packets": "0",
         "tx-errs": "0",
         "tx-drop": "0",
         "tx-fifo": "0",
         "tx-colls": "0",
         "tx-carrier": "0",
         "tx-compressed": "0"
      },{
         "interface": "wlan2.1",
         "rx-bytes": "2182235853",
         "rx-packets": "30188528",
         "rx-errs": "0",
         "rx-drop": "0",
         "rx-fifo": "0",
         "rx-frame": "0",
         "rx-compressed": "0",
         "rx-multicast": "23520",
         "tx-bytes": "59683845946",
         "tx-packets": "40914103",
         "tx-errs": "0",
         "tx-drop": "0",
         "tx-fifo": "0",
         "tx-colls": "0",
         "tx-carrier": "0",
         "tx-compressed": "0"
      },{
         "interface": "ifb1",
         "rx-bytes": "0",
         "rx-packets": "0",
         "rx-errs": "0",
         "rx-drop": "0",
         "rx-fifo": "0",
         "rx-frame": "0",
         "rx-compressed": "0",
         "rx-multicast": "0",
         "tx-bytes": "0",
         "tx-packets": "0",
         "tx-errs": "0",
         "tx-drop": "0",
         "tx-fifo": "0",
         "tx-colls": "0",
         "tx-carrier": "0",
         "tx-compressed": "0"
      },{
         "interface": "eth0_3",
         "rx-bytes": "3090843",
         "rx-packets": "23095",
         "rx-errs": "0",
         "rx-drop": "0",
         "rx-fifo": "0",
         "rx-frame": "0",
         "rx-compressed": "0",
         "rx-multicast": "0",
         "tx-bytes": "40180084",
         "tx-packets": "172109",
         "tx-errs": "0",
         "tx-drop": "37",
         "tx-fifo": "0",
         "tx-colls": "0",
         "tx-carrier": "0",
         "tx-compressed": "0"
      },{
         "interface": "eth0_0",
         "rx-bytes": "708018393424",
         "rx-packets": "486038803",
         "rx-errs": "46897",
         "rx-drop": "0",
         "rx-fifo": "0",
         "rx-frame": "0",
         "rx-compressed": "0",
         "rx-multicast": "0",
         "tx-bytes": "21209677014",
         "tx-packets": "145166006",
         "tx-errs": "0",
         "tx-drop": "2619",
         "tx-fifo": "0",
         "tx-colls": "0",
         "tx-carrier": "0",
         "tx-compressed": "0"
      }
   ]
}
```
