data<-read.table(file = "household_power_consumption.txt",  
                 sep = ";", skip = 66637, nrows = 2880, colClasses=type)


## opening png device
png("plot3.png")

## graphique number 3

## same method 
plot(zoo(data$V7,data$V11), ylab="Energy Sub metering", xlab="")

lines(zoo(data$V8,data$V11), col="red")

lines(zoo(data$V9,data$V11), col="blue")

legend("topright", col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3")
       , lty=1)



dev.off()