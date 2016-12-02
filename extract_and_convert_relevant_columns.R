library(data.table)
library(dplyr)
household <- data.table((read.table("household_power_consumption.txt",
                                    header = TRUE,
                                    stringsAsFactors = FALSE,
                                    colClasses=c("character", "character", rep("numeric",7)),
                                    na="?",
                                    sep = ";")))

household <- filter(household, Date %in% c("1/2/2007", "2/2/2007"))

household$Time <- strptime(paste(household$Date, household$Time), "%d/%m/%Y %H:%M:%S") 
household$Date <- as.Date(household$Date, "%d/%m/%Y")

