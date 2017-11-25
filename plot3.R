# setwd("./ExData_Plotting1")
data <- read.table("household_power_consumption.txt", header = TRUE, na.string = "?", sep = ";")
dates <- data[(data$Date == "1/2/2007" | data$Date == "2/2/2007"), ]

dates$Date <- as.Date(dates$Date, format="%d/%m/%Y")
dateTime <- paste(dates$Date, dates$Time)
dates$DateTime <- as.POSIXct(dateTime)

png("plot3.png", width = 480, height = 480)
with(dates, {
  plot(Sub_metering_1~DateTime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~DateTime, col='Red')
  lines(Sub_metering_3~DateTime, col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=1, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()