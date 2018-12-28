cluster_num=read.table("cluster_num")
cluster_num = cluster_num$V1
n=0
for(i in 1:10){
	start1=1
        n=n+1	
	for (j  in 1:cluster_num[n]){
		 file=paste("endo_chr",i,"_part",j,sep="")
  	 	 chr=read.table(file)
		 length=length(chr[,1])
		 end=start1+length-1
		 chr =chr[,start1:end]
	 	pr=princomp(chr,cor=TRUE)
	 	load=loadings(pr)
	 	sum=summary(pr)
		 PC=load[,1]
		 file_a=paste("endo_chr",i,"_A_B_PCA_part",j,sep="")
       	 	write.table(load ,file =file_a)
		start1=start1+length
	}


 	 n=n+1;
 	 start1=1
	 for (j  in 1:cluster_num[n]){
                 file=paste("shoot_chr",i,"_part",j,sep="")
                 chr=read.table(file)
                 length=length(chr[,1])
		 end=start1+length-1
                 chr =chr[,start1:end]
                pr=princomp(chr,cor=TRUE)
                load=loadings(pr)
                sum=summary(pr)
                 PC=load[,1]
                 file_a=paste("shoot_chr",i,"_A_B_PCA_part",j,sep="")
                write.table(load ,file =file_a)
		start1=start1+length
        }
	
}

