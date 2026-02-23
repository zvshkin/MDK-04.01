#!/bin/bash
# Функция принимает x и y, возвращает площадь
get_triangle_area_by_point() {
    local x=$1
    local y=$2
    # Используем bc для работы с дробными числами и abs (через sqrt(x^2))
    local area=$(echo "scale=2; 0.5 * sqrt($x^2) * sqrt($y^2)" | bc -l)
    echo "$area"
}