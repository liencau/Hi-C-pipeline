##########3  modified in 2019/05/07 to merge the CULs and TEMs into CULs

pdf("./LD_decay_inner_and_between_TAD.add_control.sorghum.v2.pdf",height=5,width=5);
aa<-read.table("./LD_decay_TEMs.inner_tad.100bp",header=T);
bb<-read.table("./LD_decay_TEMs.between_tad.100bp",header=T);
cc<-read.table("./LD_decay_TEMs.100bp",header=T);

plot(aa[,1]/1000,aa[,2],bty="l",xlab="kilobases",ylab="R2",cex.lab=1.3,cex.axis=1.2,type="l",lwd=2,col="blue",ylim=c(0,1),xlim=c(0,200));
points(bb[,1]/1000,bb[,2],col="purple",type="l",lwd=2);
points(cc[,1]/1000,cc[,2],col="red",type="l",lwd=2);
legend("topright",fill=c("blue","purple","red"),c("inner","between","all"),cex=1.2);
dev.off();
