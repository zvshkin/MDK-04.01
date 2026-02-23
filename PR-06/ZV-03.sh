#!/bin/bash
get_equilateral_data() {
    local a=$1
    local s=$(echo "scale=4; ($a^2 * sqrt(3)) / 4" | bc -l)
    local r_in=$(echo "scale=4; $a / (2 * sqrt(3))" | bc -l)
    local r_out=$(echo "scale=4; $a / sqrt(3)" | bc -l)
    
    # Возвращаем массив в виде строки, разделенной пробелами
    echo "$s $r_in $r_out"
}