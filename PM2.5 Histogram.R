pollution <- read.csv("data/avgpm25.csv", colClasses = c("numeric","character", "factor","numeric","numeric"))

summary(pollution$pm25)
boxplot(pollution$pm25, col="blue")
barplot(table(pollution$region), col="gold", main = "number of counties in each region")

#Do counties exceed the standard for the annual mean averaged over 3 years of 12ug/m3?
hist(pollution$pm25, col="green",breaks=100, main="Pollution by County", xlab="pm 2.5 (ug/m3)")
rug(pollution$pm25)
abline(v=median(pollution$pm25), col="magenta", lwd =4)
text("median: 10.05ug/m3", x=9.5, y=30 , pos=2, col="magenta")
abline(v=12, lwd=2)
text("standard: 12ug/m3", x=13, y=30 , pos=4)

# 2-D data
boxplot(pm25 ~region, data = pollution, col = "gold")
# Multiple Plots together
par(mfrow=c(2,1), mar = c(4,4,2,1)) # set the layout of the plots on the screen
hist(subset(pollution, region=="east")$pm25, col="green",breaks=100, main="Pollution by County : East Region", xlab="pm 2.5 (ug/m3)")
hist(subset(pollution, region=="west")$pm25, col="wheat",breaks=100, main="Pollution by County : West Region", xlab="pm 2.5 (ug/m3)")
par(mfrow=c(1,1), mar = c(4,4,2,1)) #reset the plot to single

#Scatter Plot
with(pollution, plot(latitude, pm25, col=region))
abline(h=12, lwd = 2, lty = 2) #national standard 

# Multiple Scatter Plots
par(mfcol=c(1,2), mar = c(5,4,1,2)) # set the layout of the plots on the screen
with(subset(pollution, region=="east"), plot(latitude, pm25, col="green", main="East Region"))
with(subset(pollution, region=="west"), plot(latitude, pm25, col="wheat", main="West Region"))
par(mfrow=c(1,1), mar = c(4,4,2,1)) #reset the plot to single

#Resource - R Graph Gallery