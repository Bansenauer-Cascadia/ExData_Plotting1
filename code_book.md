## Study Design
The given raw data in the file daily_household_power_consumption.txt includes a data set over several years from 2006 to 2012. For this study only data from two days was explored. The following perl script extracts data from February 1, 2007 through February 2, 2007, that is, all rows with dates from February 1 (1/2/2007) up to and including the first row for February 3 (3/2/2007) into "tmp.txt". This last record for February 3 is removed and the data is stored in the file "two_days.txt".

## Instruction List
    perl -ne 'print if /^1\/2\/2007/ .. /^3\/2\/2007/' household_power_consumption.txt > tmp.txt
    sed '$d' tmp.txt > two_days.txt
