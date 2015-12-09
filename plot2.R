# Read data



#date manipulation
dateTimes <- strptime(paste(days$V1,days$V2), "%d/%m/%Y %H:%M:%S")
#dates <- as.Date(dateTimes, format="%d/%m/%Y %H:%M:%S")
#wkdays <- weekdays(dates)

#Plot 2
plot(dateTimes,days$Global_active_power, type ="l", xlab="", ylab = "Global Active Power (kilowatts)" )

