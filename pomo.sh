#!/bin/sh

# Author: Lloyd Moore <lloyd@lookbooks.com

# Usage: pomo
function usage {
    echo "usage: $0 [-h] [-m minutes]"
    echo "-h shows this message"
    echo "-m sets number of minutes to wait"
}

OPTIND=1

MINS=$1
: ${MINS:=25}

while getopts "hm:" opt; do
    case "$opt" in
    h)
        usage
        exit 1
        ;;
    m)
        MINS=$OPTARG
        ;;
    esac
done

shift $((OPTIND-1))

sleep $((60 * $MINS)); say "Time up, time up"
