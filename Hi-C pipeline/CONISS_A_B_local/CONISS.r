library("rioja")
for(i in 1:10){
	file=paste("endo_chr",i,"_matrix",sep="")
	aa=read.table(file)
	diss <- dist((aa))
	clust <- chclust(diss) 
	file1=paste("num_of_cluster_of_endo_chr",i,".pdf",sep="")
	pdf(file=file1)
	a=bstick(clust, 25)
	dev.off()
	
	file2=paste("hcluster_plot_of_endo_chr",i,".pdf",sep="")
	pdf(file=file2)
	plot(clust, hang=-1) 
	dev.off()
	

	max_decline=0 ;
	decline=c();
	
	for(k in 1: (length(a$dispersion)-1) ){
		decline[k]=a$dispersion[k]
		if(decline[k] > max_decline ){
			max_decline=decline[k]
		}
	}
	max_bstrick= a$bstick[1]
	if(0.1*max_decline > max_bstrick){
		max_bstrick=0.1*max_decline
	}

	class_num=25
	for(k in 1: length(decline)){
		if(decline[k] < max_bstrick ){
			class_num=k
			break
		}
	}
		
	if(class_num>20){
		class_num=20
	}
	a
	b=cutree(clust,class_num)
	file3=paste("endo_chr",i,"_clust_result",sep="")
	write(b,file= file3)

}


for(i in 1:10){
        file=paste("shoot_chr",i,"_matrix",sep="")
        aa=read.table(file)
        diss <- dist((aa))
        clust <- chclust(diss)
        file1=paste("num_of_cluster_of_shoot_chr",i,".pdf",sep="")
        pdf(file=file1)
        a=bstick(clust, 25)
        dev.off()

        file2=paste("hcluster_plot_of_shoot_chr",i,".pdf",sep="")
        pdf(file=file2)
        plot(clust, hang=-1) 
        dev.off()
        max_decline=0 ;
        decline=c();
	
        for(k in 1: (length(a$dispersion)) ){
                decline[k]=a$dispersion[k]
                if(decline[k] > max_decline ){
                        max_decline=decline[k]
                }
        }
        max_bstrick= a$bstick[1]
        if(0.1*max_decline > max_bstrick){
                max_bstrick=0.1*max_decline
        }

        class_num=25
        for(k in 1: length(decline)){
                if(decline[k] < max_bstrick ){
                        class_num=k
                        break
                }
        }

	
	if(class_num>20){
		class_num=20
	}
	a
        b=cutree(clust,class_num)
        file3=paste("shoot_chr",i,"_clust_result",sep="")
        write(b,file= file3)

}
