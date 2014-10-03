awk '{printf "Core temperature: %3.1f*C\n", $1/1000}' /sys/class/thermal/thermal_zone0/temp
printf 'Core voltage: '
/opt/vc/bin/vcgencmd measure_volts core | sed -e 's/volt\=//'
