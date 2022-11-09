#!/bin/bash -x

a=10
b=23
c=50
d=$(($a+$b*$c))
e=$(($c+$a/$b))
f=$(($a%$b+$c))
g=$(($a*$b+$c))
dict[d]=$d
dict[e]=$e
dict[f]=$f
dict[g]=$g

array[0]=$d
array[1]=$e
array[2]=$f
array[3]=$g

printf '%s\n' "${array[@]}" |sort -n
printf '%s\n' "${array[@]}" |sort -rn
