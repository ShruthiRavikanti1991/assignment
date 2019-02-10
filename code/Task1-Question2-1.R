
setwd("C:/Users/Lenovo/Downloads")
dat1<-read.xlsx ("merge.xlsx",sheetName = "Sheet1", stringsAsFactors = F)

dat2 <- dat1[-1, ]
str(dat2)


dat2$Mean.Draft<-as.numeric(dat2$Mean.Draft)


dat2$ladenballast<-ifelse((dat2$Mean.Draft>10.25),"laden","ballest")

write.csv(dat2,file="task1_question2_1.csv",row.names=F)
 
   