# Plot 1
# Brian Bansenauer

#Read data from a subset file "two_days.txt" (see data_extraction.md)
cols<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
days.dat<-read.csv("data/two_days.txt",sep=";",header=FALSE,col.names=cols)

#Plot Active Power Historgram
hist(days.dat$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

#create png
dev.copy(png, file="plot1.png")
dev.off()