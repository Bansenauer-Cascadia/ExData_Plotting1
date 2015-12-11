# Plot 4
# Brian Bansenauer

#Read data from a subset file "two_days.txt" (see data_extraction.md)
cols<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
days.dat<-read.csv("data/two_days.txt",sep=";",header=FALSE,col.names=cols)

#date manipulation
dateTimes <- strptime(paste(days.dat$Date,days.dat$Time), "%d/%m/%Y %H:%M:%S")

# Multiple Plots 
par(mfrow=c(2,2), mar = c(4,4,2,1)) # set the layout of the plots on the screen

#subplot 1 - Active power time trace
plot(dateTimes, days.dat$Global_active_power, type="l", xlab="", ylab="Global Active Power")

# subplot 2 - Voltage time trace
plot(dateTimes, days.dat$Voltage, type="l", xlab="", ylab="Voltage")

#subplot 3 - Sub Metering time trace

plot(dateTimes, days.dat$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(dateTimes, days.dat$Sub_metering_2, type="l", col="red")
lines(dateTimes, days.dat$Sub_metering_3, type="l", col="blue")
par(cex=.5)
legend(x="topright",legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),lty=c(1,1), col=c("black","red", "blue"))
par(cex=.8)
# subplot 4 - Reactive power time trace
plot(dateTimes, days.dat$Global_reactive_power, type="l", xlab="", ylab="Global Reactive Power")

par(mfrow=c(1,1), mar = c(4,4,2,1)) #reset the plot to single

#create png
dev.copy(png, file="plot4.png")
dev.off()
