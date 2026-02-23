#!/bin/bash

# Подключение библиотек
source ./ZV-01.sh
source ./ZV-02.sh
source ./ZV-03.sh

echo "--- Задача 1: Треугольник по координатам точки ---"
read -p "Введите X и Y через пробел: " user_x user_y
area1=$(get_triangle_area_by_point "$user_x" "$user_y")
echo "Площадь треугольника: $area1"

echo -e "\n--- Задача 2: Удаляющиеся автомобили ---"
read -p "Введите V1, V2, начальное S и время T: " v1 v2 s t
dist=$(get_final_distance "$v1" "$v2" "$s" "$t")
echo "Расстояние через $t ч.: $dist км"

echo -e "\n--- Задача 3: Равносторонний треугольник ---"
read -p "Введите сторону треугольника a: " side_a
# Получаем данные и записываем в массив
result_array=($(get_equilateral_data "$side_a"))

echo "Площадь: ${result_array[0]}"
echo "Радиус вписанной окружности: ${result_array[1]}"
echo "Радиус описанной окружности: ${result_array[2]}"