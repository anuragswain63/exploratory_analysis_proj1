plot2<-function(){
  hospow<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
  hospow$timestamp<-paste(hospow$Date,hospow$Time,sep=" ")
  hospow$timestamp<-strptime(hospow$timestamp,format ="%d/%m/%Y %H:%M:%S")
  hospow$Date=as.Date(hospow$Date,format="%d/%m/%Y")
  hospow_res<-subset(hospow,hospow$Date=="2007-02-01"|hospow$Date=="2007-02-02")
  hospow_res$Global_active_power<-as.numeric(as.character(hospow_res$Global_active_power))
  plot(hospow_res$timestamp,hospow_res$Global_active_power,type="l",xlab="timestamp",ylab="global active power")
  dev.copy(png,"plot2.png",width=480,height=480)
  dev.off()
}