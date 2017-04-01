plot3<-function(){
  
  hospow$Sub_metering_1<-as.numeric(as.character(hospow$Sub_metering_1))
  hospow$Sub_metering_2<-as.numeric(as.character(hospow$Sub_metering_2))
  hospow$Sub_metering_3<-as.numeric(as.character(hospow$Sub_metering_3))
  plot(hospow_res$timestamp,hospow_res$Sub_metering_1,type="l",ylim=c(0,30),xlab = "timestamp",ylab="sub metering")
  lines(hospow_res$timestamp,hospow_res$Sub_metering_2,col="red",type="l")
  lines(hospow_res$timestamp,hospow_res$Sub_metering_3,col="blue",type="l")
  legend("topright",lty=1,col=c("black","red","blue"),legend=c("sub metering 1","sub metering 2","sub metering 3"))
  dev.copy(png,"plot3.png") 
  dev.off()
  
  
}