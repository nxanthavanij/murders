library(tidyverse)
murders <- read_csv("data/murders.csv")
murders <- murders %>% mutate(region = factor(region), rate = total *10^5/population)
save(murders, file = "rda/murders.rda")