da<-read.table("household_power_consumption.txt",sep=";",nrows=2880,skip=66637)
library(datasets)
datetime <- strptime(paste(da$V1,da$V2), format='%d/%m/%Y %H:%M:%S')
da2<-cbind(da,datetime)
with(da2,plot(datetime,V3,type="l",xlab="",ylab="Global Active Power(kilowatts)",frame.plot=TRUE))
dev.copy(png, file = "plot2.png")
dev.off(3)