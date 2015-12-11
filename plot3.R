# Plot 3
# Brian Bansenauer

#Read data from a subset file "two_days.txt" (see data_extraction.md)
cols<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
days.dat<-read.csv("data/two_days.txt",sep=";",header=FALSE,col.names=cols)

#date manipulation
dateTimes <- strptime(paste(days.dat$Date,days.dat$Time), "%d/%m/%Y %H:%M:%S")

#Plot Sub Metering time trace
plot(dateTimes, days.dat$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(dateTimes, days.dat$Sub_metering_2, type="l", col="red")
lines(dateTimes, days.dat$Sub_metering_3, type="l", col="blue")
legend(x="topright",legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),lty=c(1,1), col=c("black","red", "blue"))

#create png
dev.copy(png, file="plot3.png")
dev.off()