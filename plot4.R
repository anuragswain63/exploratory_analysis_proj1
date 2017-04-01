plot4<-function(){
  
  par(mfrow=c(2,2))
  plot2()
  plot4_1()
  plot3()
  plot4_2()
  
  dev.copy(png,"plot4.png",width=480,height=480)
  dev.off()
  
}