## Shell Command
    perl -ne 'print if /^1\/2\/2007/ .. /^3\/2\/2007/' household_power_consumption.txt > tmp.txt
    sed '$d' tmp.txt > two_days.txt
