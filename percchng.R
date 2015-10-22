setwd("/Users/hcnlab/Documents/Agency fMRI")
data=read.csv("percchng_onlypro.csv")

pval=c()

for (i in 1:46){
  temp=t.test(data[1:34,i],data[35:68,i],alternative=c("two.sided"),mu=0,paired=TRUE,var.equal=FALSE,conf.level=0.95)
         pval[i]=temp[[3]]
         rm(temp)
         }
         
         write.table(pval,"pval_onlypro.txt", sep="\t")