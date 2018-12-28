for(j in 1:10){
	file=paste("shoot_local_A_B_compartment_for_chr",j,sep="")
	aa=read.table(file)
	PC=as.vector(aa$V2)
	length=length(PC)
	 x=c(1:1:length(PC))
	 x1=x[which(PC>0)]
	 PC1=PC[x1]
	
	file_name=paste("shoot_chr",j,"_local_A_B_compartment_v2.pdf",sep="")
	pdf(file =file_name,width=10,height=6)
	par(mar=c(0.5,3,0.5,1))
	layout(matrix(c(1,2),2, 1, byrow = TRUE))
	plot(x,PC,type='h',col="blue") 
	lines(x1,PC1,type='h',col='red')

	PC=as.vector(aa$V3)
        length=length(PC)
         x=c(1:1:length(PC))
         x1=x[which(PC>0)]
         PC1=PC[x1]
         plot(x,PC,type='h',col="blue",ylim=c(-0.2,0.2))
        lines(x1,PC1,type='h',col='red')
	dev.off()





        file=paste("endo_loacal_A_B_compartment_for_chr",j,sep="")
        aa=read.table(file)
        PC=as.vector(aa$V2)
        length=length(PC)
         x=c(1:1:length(PC))
         x1=x[which(PC>0)]
         PC1=PC[x1]

        file_name=paste("endo_chr",j,"_local_A_B_compartment_v2.pdf",sep="")
        pdf(file =file_name,width=10,height=6)
        par(mar=c(0.5,3,0.5,1))
        layout(matrix(c(1,2),2, 1, byrow = TRUE))
        plot(x,PC,type='h',col="blue")  
        lines(x1,PC1,type='h',col='red')

        PC=as.vector(aa$V3)
        length=length(PC)
         x=c(1:1:length(PC))
         x1=x[which(PC>0)]
         PC1=PC[x1]
         plot(x,PC,type='h',col="blue",ylim=c(-0.2,0.2))
        lines(x1,PC1,type='h',col='red')
        dev.off()



}
