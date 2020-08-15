#!/bin/bash
set -e
if [ "x$1" = "x" ]; then
    echo "Please input network interface."
    exit 1    
else
    NIC=$1
fi
nomad agent -dev --bind="{{ GetInterfaceIP \"${NIC}\"}}" -network-interface=${NIC}
