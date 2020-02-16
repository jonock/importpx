install.packages("tidyverse")
install.packages('pxR')
library(tidyverse)
library(dplyr)
library(pxR)
# Enter filename down below
dataimport <- read.px('px-x-1103020200_101.px')
data <- as.data.frame(dataimport)

write.csv(data,'pxexport.csv', fileEncoding='utf-8')

personenwagen <- subset.data.frame(data, Fahrzeuggruppe....art == '> Personenwagen')
grouped <- group_by(.data = personenwagen, ) %>% summarise(n = sum(value))
summarise(group_by(.data = personenwagen, Jahr, Treibstoff), n = sum(value))

personenwagen %>%
  group_by(Jahr, Monat, Treibstoff) %>%
  dplyr::summarise(n = sum(value)) -> summie


write.csv(summie,'monthly_18_19.csv')
