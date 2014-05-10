data<-read.table(file = "household_power_consumption.txt",  
                 sep = ";", skip = 66637, nrows = 2880, colClasses=type)


## opening png device
png("plot4.png")


par(mfrow=c(2,2))

## panel1
plot.zoo(dataGraph, ylab="Global Active Power (kilowatts)", xlab="")


## panel 2
plot.zoo(zoo(data$V5,data$V11), ylab="voltage", xlab="datetime")

## panel 3

plot(zoo(data$V7,data$V11), ylab="Energy Sub metering", xlab="")

lines(zoo(data$V8,data$V11), col="red")

lines(zoo(data$V9,data$V11), col="blue")

legend("topright", col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3")
       , lty=1)


## panel 4

plot(zoo(data$V4, data$V11), type="h", 
     ylab="Global_reactive_power", xlab="datetime", )

dev.off()
