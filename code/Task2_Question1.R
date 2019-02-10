library(ggplot2)
library(dplyr)

setwd("C:/Users/Lenovo/Downloads")

df_merge<-read.xlsx ("merge4_task2.xlsx",sheetName = "Sheet1",stringsAsFactors = F)

df_merge$Speed.Observed<-as.numeric(df_merge$Speed.Observed)
df_merge$ME.Fuel.Cons<-as.numeric(df_merge$ME.Fuel.Cons)
df_merge$Mean.Draft<-as.numeric(df_merge$Mean.Draft)

task2<-df_merge %>%
  group_by(Report.Month) %>%
  summarise_each(funs(mean(., na.rm=TRUE)),Speed.Observed, ME.Fuel.Cons, Mean.Draft) 

colnames(task2)<-c("Month","Avg_Speed","Avg_Consumption","Avg_Draft")

write.csv(task2,file="task2.csv",row.names = F )

data<-read.csv("task2.csv")
data<-data[-25,]
colnames(data)

ggplot(data, aes(x=Month, y=Avg_Speed)) +
  geom_bar(stat = "identity",fill="skyblue")+
  labs(title="Date vs Speed ", x="Date", y="Speed")+
  scale_y_continuous(name = "Speed", breaks = seq(0,13,2), limits = c(0,13))+
  theme_bw()

summary(data)


plot1<-ggplot(data, aes(x=Month, y=Avg_Speed)) +
      geom_bar(stat = "identity",fill="skyblue")+
      labs(title="Date vs Speed ", x="Date", y="Speed")+
      scale_y_continuous(name = "Speed", breaks = seq(0,13,1), limits = c(0,13))+
      theme_bw()



plot2<-ggplot(data, aes(x=Month, y=Avg_Draft)) +
       geom_bar(stat = "identity",fill="skyblue")+
       labs(title="Date vs Draft ", x="Date", y="Draft")+
       scale_y_continuous(breaks = seq(0,11,1), limits = c(0,11))+
       theme_bw()


plot3<-ggplot(data, aes(x=Avg_Speed, y=Avg_Consumption)) +
       geom_line(colour="red")+
       labs(title="Speed vs Consumption ", x="Speed", y="Consumption")+
       scale_y_continuous(breaks = seq(12,24,2), limits = c(12,24))+
       theme_bw()


ggsave("Date vs Speed.png", plot=plot1)
ggsave("Date vs Draft.png", plot=plot2)
ggsave("Speed vs Consumption.png", plot=plot3)

