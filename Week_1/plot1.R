## Plot 1, reading the Data, converting the col to the corresponding data type, and making a subset

library(lubridate)

HHD <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)


HHD$Date <- dmy(HHD$Date)

HHD$Time <- hms(HHD$Time)

HHDsub <- with(HHD, HHD[(Date >= "2007-02-01"& Date <= "2007-02-02"),])

HHDsub$Global_active_power <- as.numeric(HHDsub$Global_active_power)



## png, plot and dev.off

png("plot1.png", height = 480, width = 480)
hist(HHDsub$Global_active_power, col ="red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()


## plot 2

HHDformated$daytime <- strptime(paste(HHDsub02$Date, HHDsub2$Time, sep = " "), "%d/%m/%Y %H:%M:%S" )

png("plot2.png", height = 480, width = 480)
plot(HHDformated$daytime, HHDformated$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)")
dev.off()

## plot 3
png("plot4.png", height = 480, width = 480)
with(HHDformated, plot(x = daytime, y = Sub_metering_1, type = "l", col ="black"))
with(HHDformated, plot(x = daytime, y = Sub_metering_2, type = "l",  col ="blue"))
with(HHDformated, plot(x = daytime, y = Sub_metering_3, type = "l",  col ="red"))
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), pch = "____")
dev.off()




plot(daytime, submetering1, type="l", ylab="Energy Submetering", xlab="")
lines(daytime, submetering2, type="l", col="red")
lines(daytime, submetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")


### plot 4


plot(datetime, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")
