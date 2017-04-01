plot1<-function(){
  
  hp1<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
  hp1$Date=as.Date(hp1$Date,format="%d/%m/%Y")
  req_dates<-subset(hp1,hp1$Date=="2007-02-01"|hp1$Date=="2007-02-02")
  hp1global_actvpwr<-as.numeric(as.character(hp1$Global_active_power))
  hist(hp1global_actvpwr,main="freq of global actv power",xlab="global active power",ylab="frequency",xlim=c(0,6),col="red")
  dev.copy(png,"plot1.png",width=480,height=480)
  dev.off()
}