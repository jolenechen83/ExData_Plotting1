#Plot 1
png(filename="plot1.png",width = 480, height = 480, units = "px")
hist(hpc2$Global_active_power,freq=TRUE, xlab="Global Active Power (kilowatts)",main="Global Active Power" , col='red',ylim=c(0, 1200))
dev.off()