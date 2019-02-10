setwd("C:/Users/Lenovo/Downloads/data")
#library("xlsx")
#library("dplyr")
dat1<-read.xlsx ("Vessel1_06022019.xlsx",sheetName = "Data (Noon)")
id<-"vessel1"
df1<-dat1%>%mutate(vesselName=id)


dat2<-read.xlsx("Vessel2_06022019.xlsx",sheetName = "Data (Noon)")
id<-"vessel2"
df2<-dat2%>%mutate(vesselName=id)

dat3<-read.xlsx("Vessel3_06022019.xlsx",sheetName = "Data (Noon)")
id<-"vessel3"
df3<-dat3%>%mutate(vesselName=id)

dat4<-read.xlsx("Vessel4_06022019.xlsx",sheetName = "Data (Noon)")
id<-"vessel4"
df4<-dat4%>%mutate(vesselName=id)

dat5<-read.xlsx("Vessel5_06022019.xlsx",sheetName = "Data (Noon)")
id<-"vessel5"
df5<-dat5%>%mutate(vesselName=id)

dat6<-read.xlsx("Vessel6_06022019.xlsx",sheetName = "Data (Noon)")
id<-"vessel6"
df6<-dat6%>%mutate(vesselName=id)

dat7<-read.xlsx("Vessel7_06022019.xlsx",sheetName = "Data (Noon)")
id<-"vessel7"
df7<-dat7%>%mutate(vesselName=id)

dat8<-read.xlsx("Vessel8_06022019.xlsx",sheetName = "Data (Noon)")
id<-"vessel8"
df8<-dat8%>%mutate(vesselName=id)

dat9<-read.xlsx("Vessel9_06022019.xlsx",sheetName = "Data (Noon)")
id<-"vessel9"
df9<-dat9%>%mutate(vesselName=id)


dat10<-read.xlsx("Vessel10_06022019.xlsx",sheetName = "Data (Noon)")
id<-"vessel10"
df10<-dat10%>%mutate(vesselName=id)

dat11<-read.xlsx("Vessel11_06022019.xlsx",sheetName = "Data (Noon)")
id<-"vessel11"
df11<-dat11%>%mutate(vesselName=id)

dat12<-read.xlsx("Vessel12_06022019.xlsx",sheetName = "Data (Noon)")
id<-"vessel12"
df12<-dat12%>%mutate(vesselName=id)

dat15<-read.xlsx("Vessel15_06022019.xlsx",sheetName = "Data (Noon)")
id<-"vessel15"
df15<-dat15%>%mutate(vesselName=id)

dat16<-read.xlsx("Vessel16_06022019.xlsx",sheetName = "Data (Noon)")
id<-"vessel16"
df16<-dat16%>%mutate(vesselName=id)

dat17<-read.xlsx("Vessel17_06022019.xlsx",sheetName = "Data (Noon)")
id<-"vessel17"
df17<-dat17%>%mutate(vesselName=id)


dat18<-rbind(df1,df2,df2,df3,df4,df5,df6,df7,df8,df9,df10,df11,df12,df15,df16,df17)

merge_file_name <- "C:/Users/Lenovo/Downloads/merge.xlsx"

write.xlsx(dat18,merge_file_name,row.names = F )







