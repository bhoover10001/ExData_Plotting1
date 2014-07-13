source("getUtilityData.R")

plot1 <- function(file, dateFrom="2007-02-01", dateTo="2007-02-02") {
  par(mfcol=c(1,1));
  timeData <- getUtitilyData(file, dateFrom="2007-02-01", dateTo="2007-02-02")
  hist(timeData$Global_active_power, xlab="Global Active Power (kilowatts)", col="red", main="Global Active Power")
}
