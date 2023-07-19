#!/bin/bash

inp=$1
out=$2

awk '{ if ($9==404) {print $1, $6, $7} }' "$inp" > "$out"
