Lab 04 - La Quinta is Spanish for next to Denny’s, Pt. 1
================
Kedman
4/12/2025

### Load packages and data

``` r
library(tidyverse) 
library(dsbox)
```

``` r
states <- read_csv("data/states.csv")
```

### Exercise 1

``` r
glimpse(states)
```

    ## Rows: 51
    ## Columns: 3
    ## $ name         <chr> "Alabama", "Alaska", "Arizona", "Arkansas", "California",…
    ## $ abbreviation <chr> "AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "FL", "GA…
    ## $ area         <dbl> 52420.07, 665384.04, 113990.30, 53178.55, 163694.74, 1040…

``` r
c(nrow(states), ncol(states))
```

    ## [1] 51  3

``` r
dim(states)
```

    ## [1] 51  3

1.  The number of rows is 51 and the number of columns is 3.
2.  The dimension is \[51 x 3\]
3.  The names of the columns or variables are name, abbreviation, area.
4.  Each row represents a US state with its code and area in square
    miles.

### Exercise 2

1.  The dimensions of La Quinta is \[909 x 6\].
2.  Each row represents the address of a La Quinta including its
    geographical coordinates.
3.  The columns or variables are address, city, state, zip, longitude,
    latitude.

``` r
?laquinta
```

### Exercise 3

…

### Exercise 4

…

### Exercise 5

…

### Exercise 6

…

Add exercise headings as needed.
