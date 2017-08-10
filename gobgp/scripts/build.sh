#!/bin/bash

# "go get github.com*" could not refer from docker build. 
# And we convert same build to shell-script.

apt-get update
apt-get install -y curl wget git bzip2 supervisor tcpdump net-tools

go get github.com/Masterminds/glide
mkdir -p $GOPATH/src/github.com/osrg && cd $_ && git clone https://github.com/osrg/goplane.git && cd goplane && glide install
go install github.com/osrg/goplane

go get github.com/socketplane/libovsdb
go get github.com/osrg/gobgp/gobgp
go get github.com/osrg/gobgp/gobgpd

cd $GOPATH/src/github.com/osrg/goplane/vendor/github.com/osrg/gobgp/gobgpd && go install
cd $GOPATH/src/github.com/osrg/goplane/vendor/github.com/osrg/gobgp/gobgp  && go install

