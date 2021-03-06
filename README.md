
# mypackage

<!-- badges: start -->
[![R-CMD-check](https://github.com/kobesar/mypackage/workflows/R-CMD-check/badge.svg)](https://github.com/kobesar/mypackage/actions)
[![codecov](https://codecov.io/gh/kobesar/mypackage/branch/master/graph/badge.svg?token=S8EMZ6M8YC)](https://codecov.io/gh/kobesar/mypackage)
<!-- badges: end -->

The goal of mypackage is to give the user useful statistical functions.

## Installation

You can install the released version of mypackage from [CRAN](https://CRAN.R-project.org) with:

``` r
# install.packages("devtools")
devtools::install_github("kobesar/mypackage")
library(mypackage)
```

To view the vignette:

``` r
devtools::install_github("kobesar/mypackage", build_vignette = TRUE, build_opts = c())
library(mypackage)
# Use this to view the vignette in the Demo HTML help
help(package = "mypackage", help_type = "html")
# Use this to view the vignette as an isolated HTML file
utils::browseVignettes(package = "mypackage")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(mypackage)

## perform basic t-test!
x <- sample(1:5, 100, replace = TRUE)
my_t.test(x, alternative = "two.sided", mu = 3)
```
