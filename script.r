library(pxR)
dataimport <- read.px('px-x-1103020200_101.px', encoding='UTF-8')
data <- as.data.frame(dataimport)

write.csv(data,'pxexport.csv', fileEncoding='utf-8')


