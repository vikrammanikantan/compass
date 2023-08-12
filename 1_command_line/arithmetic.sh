#!/bin/bash
# Basic arithmetic using double parentheses
a=$(( 4 + 5 ))
echo $a # 9

var1=4
var2=5
a=$(($var1+$var2))
echo $a # 9

b=$(( $a + 3 ))
echo $b # 12

b=$(( $a + 4 ))
echo $b # 13

(( b++ ))
echo $b #   14

(( b += 3 ))
echo $b # 17

a=$(( var1 * var2 ))
echo $a # 20
