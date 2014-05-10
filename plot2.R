data<-read.table(file = "household_power_consumption.txt",  
                 sep = ";", skip = 66637, nrows = 2880, colClasses=type)

## opening png device
png("plot2.png")


## graphique number 2


## coerce the first variable to date
data$V1<-as.Date(data$V1, format="%d/%m/%Y")

## Fisrt step of creating time variable (concatenation of the date
## and the time)
data$V10<-paste(data$V2,data$V1,sep=" ")

## create a class time variable named V11
data$V11<-strptime(data$V10, "%H:%M:%S %Y-%m-%d")

## As we have time series variables, i create a zoo object
## which permit to link the time variable V11 and V3
dataGraph<-zoo(data$V3,data$V11)
library(zoo)

## Plotting
plot.zoo(dataGraph, ylab="Global Active Power (kilowatts)", xlab="")


## exporting


dev.off()
