install.packages("openxlsx")
library(openxlsx)

path <- "C:/Users/Lenovo/Downloads/data"
merge_file_name <- "C:/Users/Lenovo/Downloads/merge.xlsx"

filenames_list <- list.files(path= path, full.names=TRUE)

All <- lapply(filenames_list,function(filename){
  print(paste("Merging",filename,sep = " "))
  read.xlsx(filename)
})

df <- do.call(rbind.data.frame(), All)
write.xlsx(df,merge_file_name)


