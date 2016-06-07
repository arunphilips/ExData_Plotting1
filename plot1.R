#Reading data
filer <- file("household_power_consumption.txt")
dset <- read.table(text = grep("^[1,2]/2/2007", readLines(filer), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)

#Plotting histogram
hist(dset$Global_active_power, main= "Global Active Power", xlab="Global Active Power (kilowatts)", 
     col="red")
