#!/bin/bash

echo "***********************************"
echo "La temperatura dentro de la RPi es:"
vcgencmd measure_temp
echo "***********************************"
