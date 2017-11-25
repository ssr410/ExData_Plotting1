# setwd("./ExData_Plotting1")
data <- read.table("household_power_consumption.txt", header = TRUE, na.string = "?", sep = ";")
dates <- data[(data$Date == "1/2/2007" | data$Date == "2/2/2007"), ]
png("plot1.png", width = 480, height = 480)
hist(dates$Global_active_power, col ="red", xlab = "Global Active Power (Kilowatts)",
     ylab = "Frequency", main = "Global Active Power")
dev.off()