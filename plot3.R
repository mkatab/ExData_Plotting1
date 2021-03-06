da<-read.table("household_power_consumption.txt",sep=";",nrows=2880,skip=66637)
library(datasets)
datetime <- strptime(paste(da$V1,da$V2), format='%d/%m/%Y %H:%M:%S')
da2<-cbind(da,datetime)
with(da2,plot(datetime,V7,type="n",xlab="",ylab="Energy sub metering"))
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
with(da,points(datetime,V7,type="l",col="black"))
with(da,points(datetime,V8,type="l",col="red"))
with(da,points(datetime,V9,type="l",col="blue"))
dev.copy(png, file = "plot3.png")
dev.off(3)