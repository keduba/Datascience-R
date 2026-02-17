## Scrape the list of most popular TV shows from https://www.imdb.com/chart/tvmeter

## load packages ----------------------------------------------------------------

library(tidyverse)
library(rvest)

# read in http://www.imdb.com/chart/tvmeter ------------------------------------

page <- read_html("http://www.imdb.com/chart/tvmeter")

## years ------------------------------------------------------------------------

years_full <- page %>%
 html_nodes(".cli-title-metadata-item") %>%
 html_text()# %>%
 #___

years <- years_full[seq(1, length(years_full), 3)] 

# scores -----------------------------------------------------------------------

# scores <- page %>%
#  ___

scores <- c(years_full[seq(3, length(years_full), 3)], NA)

# names ------------------------------------------------------------------------

names <- page %>% 
  html_nodes(".ipc-title__text--reduced") %>% 
  html_text()

names <- names[-c(1, length(names))]

# tvshows dataframe ------------------------------------------------------------

tvshows <- tibble(
 rank = 1:length(names),
 names,
 years,
 scores,
)

# add new variables ------------------------------------------------------------

tvshows <- tvshows %>%
 mutate(
   genre = NA,
   runtime = NA,
   n_episode = NA,
 )

# add new info for first show --------------------------------------------------

tvshows$genre[1] <- "__"
tvshows$runtime[1] <- ___
tvshows$n_episode[1] <- ___

# add new info for second show --------------------------------------------------

tvshows$genre[2] <- "__"
tvshows$runtime[2] <- ___
tvshows$n_episode[2] <- ___

# add new info for third show --------------------------------------------------

tvshows$genre[3] <- "__"
tvshows$runtime[3] <- ___
tvshows$n_episode[3] <- ___
