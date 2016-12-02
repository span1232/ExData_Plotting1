# plot 4


png("plot4.png", width=500, height=500)
# 4 figures arranged in 2 rows and 2 columns
par(mfrow=c(2,2))
# top left
plot2(ylab = "Global Active Power")

# top right
with(household, plot(Time,
                     Voltage,
                     type = "l",
                     ylab = "Voltage",
                     xlab = "datetime"
))

# bottom left
plot3()

# bottom right 
with(household, plot(Time,
                     Global_reactive_power,
                     type = "l",
                     col  = "black",
                     ylab = "Global_reactive_power",
                     xlab = "datetime"
))

dev.off()


