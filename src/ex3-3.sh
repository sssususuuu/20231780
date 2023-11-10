#!/bin/bash

read -p "몸무게(kg)를 입력하세요: " weight 
read -p "신장(m)를 입력하세요: " height

bmi=$(echo "scale=2; $weight / ($height * $height)" | bc)

if (( $(echo "$bmi < 18.5" | bc -l) )); then
    echo "저체중입니다."
elif (( $(echo "$bmi >= 18.5 && $bmi < 23" | bc -l) )); then
    echo "정상체중입니다."
else
    echo "과체중입니다."
fi
