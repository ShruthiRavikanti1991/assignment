
setwd("C:/Users/Lenovo/Downloads")
dat1<-read.xlsx ("merge.xlsx",sheetName = "Sheet1", stringsAsFactors = F)

data2 <- dat1[-1, ]
str(data2)


data2$Speed.Logged<-as.numeric(data2$Speed.Logged)
data2$Speed.Observed<-as.numeric(data2$Speed.Observed)
data2$Wave.Height..Beaufort.<-as.numeric(data2$Wave.Height..Beaufort.)
data2$Spd.Vs.Pow...SOG...P.FC<-as.numeric(data2$Spd.Vs.Pow...SOG...P.FC)
data2$Report.Duration<-as.numeric(data2$Report.Duration)


data3$Newcolumn<-ifelse((data2$Report.Duration>=10)&(data2$Speed.Observed>=6)&(data2$Speed.Observed<=15)
                        &(data2$Wave.Height..Beaufort.<=5)&(data2$Spd.Vs.Pow...SOG...P.FC>=-20)
                        &(data2$Spd.Vs.Pow...SOG...P.FC<=120),1,0)

write.csv(data3,file="task1_quesion2.csv",row.names = F )
