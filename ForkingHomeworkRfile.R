library(tidyverse)
library(dplyr)
library(data.table)

diamonds

diamonds%>%
  select(carat,cut,price)%>%
  filter(cut == "Premium")%>%
  filter(price > 7000 & price < 10000)%>%
  arrange(desc(carat))%>%
  slice(1:20)

#data.table coding
Diamonds <-as.data.table(diamonds)
Diamonds[cut == "Premium" & price >7000 & price < 10000][order(-carat)][,.(carat,cut,price)][1:20]
