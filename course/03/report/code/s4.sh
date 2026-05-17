#!/bin/bash

gcd() {
    local m=$1
    local n=$2
    if [ "$m" -eq "$n" ]; then
        echo "GCD is $m"
    elif [ "$m" -gt "$n" ]; then
        gcd $((m - n)) "$n"
    else
        gcd "$m" $((n - m))
    fi
}

while true; do
    read -r a b
    if [ -z "$a" ]; then
        echo "bye"
        break
    fi
    gcd "$a" "$b"
done

