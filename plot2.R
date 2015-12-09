# Plot 2
# Brian Bansenauer

#Read data from a subset file "two_days.txt" (see data_extraction.md)
cols<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
days.dat<-read.csv("data/two_days.txt",sep=";",header=FALSE,col.names=cols)

#date manipulation
dateTimes <- strptime(paste(days.dat$Date,days.dat$Time), "%d/%m/%Y %H:%M:%S")
#dates <- as.Date(dateTimes, format="%d/%m/%Y %H:%M:%S")
#wkdays <- weekdays(dates)

#Plot 2
plot(dateTimes,days.dat$Global_active_power, type ="l", xlab="", ylab = "Global Active Power (kilowatts)" )
