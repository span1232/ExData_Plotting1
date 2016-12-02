# plot 3
png("plot3.png", width=500, height=500)  
plot3 <- function(){
    
    
    
    with(household, plot(Time,
                         Sub_metering_1,
                         type = "l",
                         col  = "black",
                         ylab = "Energy sub metering",
                         xlab = ""
    ))
    
    with(household, lines(Time,
                          Sub_metering_2,
                          type = "l",
                          col  = "red",
                          xlab = ""
    ))
    
    with(household, lines(Time,
                          Sub_metering_3,
                          type = "l",
                          col  = "blue",
                          xlab = ""
    ))
    
    legend("topright", c("Sub_metering_1", "Sub_metering_2" , "Sub_metering_3"),
           lty=1,
           lwd=1,
           col=c("black", "red", "blue")
    )
    
    
}

plot3()
dev.off()
