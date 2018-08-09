#!/bin/sh
for i in $(cat ~/servers.txt);

do /pkg/netbackup/QC/scripts/aptare_query.pl -days=30 -successful -type=full -master=$i >> load_balance.txt;

  cat load_balance.txt | grep Backup | awk '{print $3}';

done
