source("getUtilityData.R")

plot4 <- function(file, dateFrom="2007-02-01", dateTo="2007-02-02") {
  par(mfcol=c(2,2));
  
  timeData <- getUtitilyData(file, dateFrom="2007-02-01", dateTo="2007-02-02")
  
  plot(timeData$Time, timeData$Global_active_power, xlab="", ylab="Global Active Power", type="n")
  lines(timeData$Time, timeData$Global_active_power)
  axis.Date(side = 1, timeData$Time, format="%a")
  
  plot(timeData$Time, timeData$Sub_metering_1, xlab="", ylab="Energy sub metering", type="n")
  lines(timeData$Time, timeData$Sub_metering_1)
  lines(timeData$Time, timeData$Sub_metering_2, col="red")
  lines(timeData$Time, timeData$Sub_metering_3, col="blue")
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lwd=2)
  axis.Date(side = 1, timeData$Time, format="%a")
  
  plot(timeData$Time, timeData$Voltage, ylab="Voltage", xlab="datetime", type="n")
  lines(timeData$Time, timeData$Voltage)
  axis.Date(side = 1, timeData$Time, format="%a")
  
  plot(timeData$Time, timeData$Global_reactive_power, ylab="Global_reactive_power", xlab="datetime", type="n")
  lines(timeData$Time, timeData$Global_reactive_power)
  axis.Date(side = 1, timeData$Time, format="%a")
}
