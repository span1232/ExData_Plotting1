# plot 1
png("plot1.png", width=500, height=500)
hist(household$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()