# setwd("./ExData_Plotting1")
data <- read.table("household_power_consumption.txt", header = TRUE, na.string = "?", sep = ";")
dates <- data[(data$Date == "1/2/2007" | data$Date == "2/2/2007"), ]

dates$Date <- as.Date(dates$Date, format="%d/%m/%Y")
dateTime <- paste(dates$Date, dates$Time)
dates$DateTime <- as.POSIXct(dateTime)

png("plot2.png", width = 480, height = 480)
plot(dates$Global_active_power~dates$DateTime, type = "l", ylab = "Global Active Power (Kilowatts)", xlab = "")
dev.off()