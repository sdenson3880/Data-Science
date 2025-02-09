library (rio)
library (dplyr)
library(ggplot2)


historic_data <- "https://raw.githubusercontent.com/H-B-P/d-and-d-sci-impossible-structures/main/data.csv"

proposals_data <- "https://raw.githubusercontent.com/H-B-P/d-and-d-sci-impossible-structures/main/architect_proposals.txt"

historic <- import(historic_data)

proposals <- import(proposals_data) %>% mutate(background=gsub('who was ','',V2)
                                               
