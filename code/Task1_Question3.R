setwd("E:/New folder")

library(dplyr)

df_merge<-read.xlsx ("merge4.xlsx",sheetName = "Sheet1",stringsAsFactors = F)
df_merge <- df_merge[-1,]

df_merge$Speed.Observed<-as.numeric(df_merge$Speed.Observed)
df_merge$ME.Fuel.Cons<-as.numeric(df_merge$ME.Fuel.Cons)
df_merge$Mean.Draft<-as.numeric(df_merge$Mean.Draft)

task1_4<-df_merge %>%
  group_by(vesselName,Report.Month) %>%
  summarise_each(funs(mean(., na.rm=TRUE)),Speed.Observed, ME.Fuel.Cons, Mean.Draft) 

colnames(task1_4)<-c("vesselName","Month","Avg_Speed","Avg_Consumption","Avg_Draft")

write.csv(task1_4,file="task1_quesion3.csv",row.names = F )







