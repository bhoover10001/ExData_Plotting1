source("getUtilityData.R")

plot2 <- function(file, dateFrom="2007-02-01", dateTo="2007-02-02") {
  par(mfcol=c(1,1));
  timeData <- getUtitilyData(file, dateFrom="2007-02-01", dateTo="2007-02-02")
  plot(timeData$Time, timeData$Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", type="n")
  lines(timeData$Time, timeData$Global_active_power)
  axis.Date(side = 1, timeData$Time, format="%a")
}
