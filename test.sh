#!/bin/bash
x=1
while [ true ]
do
  echo "Run number $x"
  echo ""
  testground -vv run composition --file ./compositions/storm.toml
  x=$(( $x + 1 ))
  sleep 10
done
