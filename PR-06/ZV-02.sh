#!/bin/bash
get_final_distance() {
    local v1=$1
    local v2=$2
    local s=$3
    local t=$4
    local res=$(echo "scale=2; $s + ($v1 + $v2) * $t" | bc -l)
    echo "$res"
}