#!/bin/sh

# Hakee pimiön sensoridatan netistä ja päättelee onko pimiöllä joku

echo $(curl -s https://ttkamerat.fi/darkroom/api/v1/sensors/latest --connect-timeout 2 -L) | jq -r 'if .entries[0].value > 100 then "Joku on pimiöllä :O" else "Pimiö tyhjä :(" end'

