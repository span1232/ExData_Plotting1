# plot 2
png("plot2.png", width=500, height=500)  
plot2 <- function(ylab = "Global Active Power (kilowatts)") {
    
    with(household, plot(Time,
                         Global_active_power,
                         type = "l",
                         xlab = ""
    ))
    
    
}

plot2()
dev.off()
