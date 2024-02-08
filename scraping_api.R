library(dplyr)
library(rvest)

link <- read_html("https://www.tdcj.texas.gov/death_row/dr_executed_offenders.html") %>% 
  html_elements("a[href*='last']") %>%
  html_attr("href") %>% 
  grep("last", ., value = TRUE)
