#! /bin/bash

temp="$(sensors -u | grep 'temp1_input:' | head -n1 | cut -d ':' -f 2 | cut -d '.' -f 1)"
output="$temp °C"
echo $output
