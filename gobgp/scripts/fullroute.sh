#!/bin/bash

# download RIB
cd /opt/
/usr/bin/wget http://archive.routeviews.org/route-views.wide/bgpdata/`date -d "1 day ago" "+%Y.%m"`/RIBS/rib.`date -d "1 day ago" "+%Y%m%d"`.0000.bz2 -O rib.bz2
/bin/bunzip2  rib.bz2

$GOPATH/bin/gobgp mrt inject grobal rib
$GOPATH/bin/gobgp global rib 8.8.8.8
