#!/bin/sh

fail(){
  echo $1
  exit 1
}

test ! -z "$SOCAT_CONFIG" || fail "Missing config"

IFS='
'

for line in $SOCAT_CONFIG
do
  eval "socat $line" &
done

wait