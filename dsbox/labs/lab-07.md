Lab 07 - Simpson’s paradox
================
Kedman
7/12/2025

### Load packages and data

``` r
library(tidyverse) 
library(mosaicData) 
```

### Exercise 1

The study is an observational studu and not an experiment. There was no
attempt to control for the outcome which is something that one would
find in an experiment.

### Exercise 2

There are 1314 observations across three variables. Each observation is
a participant in the study.

### Exercise 3

The three variables are the outcome, the age at the time of the first
study and the smoker status of the participant.

The outcome is a factor (character type), age is a number (integer) and
smoker is a factor (char) with two levels yes and no.

``` r
ggplot(Whickham, mapping = aes(y = outcome)) +
  geom_bar() 
```

![](lab-07_files/figure-gfm/visualise-outcome-1.png)<!-- -->

``` r
ggplot(Whickham, aes(smoker)) + 
  geom_bar()
```

![](lab-07_files/figure-gfm/viz-smoker-1.png)<!-- -->

``` r
Whickham |> 
  ggplot(aes(age)) +
  geom_histogram(bins = 40)
```

![](lab-07_files/figure-gfm/viz-age-1.png)<!-- -->

``` r
ggplot(Whickham, mapping = aes(y = outcome, fill = smoker)) +
  geom_bar(position = "dodge") 
```

![](lab-07_files/figure-gfm/bar-smoker-outcome-1.png)<!-- -->

### Exercise 4

For the relationship between smoking status and health outcome, one
would expect the probabilities of being alive to decrease with the
increase in smoking.
