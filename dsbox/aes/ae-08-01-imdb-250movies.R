## Scrape the list of top 250 movies from https://www.imdb.com/chart/top

# Load packages ---------------------------------------------------------------

library(tidyverse)
library(rvest)
library(robotstxt)

# Read html page ---------------------------------------------------------------
paths_allowed("https://www.imdb.com/chart/top")

page <- read_html("https://www.imdb.com/chart/top")

# Titles -----------------------------------------------------------------------

titles <- page %>%
 html_nodes(".ipc-title__text--reduced") %>%
 html_text()

# Years-------------------------------------------------------------------------

years_ratings_time <- page %>%
 html_nodes(".cli-title-metadata-item") %>%
 html_text() #%>%
 # str_remove('"') %>%
 # str_remove("___") %>%
 # as.numeric()
years <- years_ratings_time[seq(1, length(years_ratings_time), 3)] %>% 
  as.numeric()
# Scores -----------------------------------------------------------------------

ratings <- years_ratings_time[seq(3, length(years_ratings_time), 3)] 

#ratings <- page %>%
#  html_nodes("___") %>%
#  ___ %>%
#  ___

# Put it all in a data frame ---------------------------------------------------

imdb_top_250 <- tibble(
 title = titles,
 rating = ratings,
 year = years
)

# Add rank ---------------------------------------------------------------------

imdb_top_250 <- imdb_top_250 %>%
  mutate(rank = 1:nrow(imdb_top_250)) %>%
  relocate(rank)
