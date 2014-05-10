data<-read.table(file = "household_power_consumption.txt",  
                 sep = ";", skip = 66637, nrows = 2880, colClasses=type)

## opening png device
png("plot1.png")

## Graphic 1
hist(data$V3, xlab="Global Active Power (kilowatts)", 
     col="red", main="Global Active Power")


dev.off()
