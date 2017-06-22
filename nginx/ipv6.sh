#!/bin/sh
IP6_PREFIX="52:54:00:af::"
COUNT=5
DEV=eth0
IP6PREFIX="/64"

for (( i = 0; i < ${COUNT}; i++ )); do
    n=$(printf "%x" $i)
    ip addr add ${IP6_PREFIX}${n}${IP6PREFIX} dev ${DEV}
done
