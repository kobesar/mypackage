
# mypackage

<!-- badges: start -->
[![R-CMD-check](https://github.com/kobesar/mypackage/workflows/R-CMD-check/badge.svg)](https://github.com/kobesar/mypackage/actions)
[![codecov](https://codecov.io/gh/kobesar/mypackage/branch/master/graph/badge.svg?token=S8EMZ6M8YC)](https://codecov.io/gh/kobesar/mypackage)
<!-- badges: end -->

The goal of mypackage is to ...

## Installation

You can install the released version of mypackage from [CRAN](https://CRAN.R-project.org) with:

``` r
devtools::install_github("kobesar/mypackage")
```

To view the vignette:

``` r
devtools::install_github("kobesar/mypackage", build_vignette = TRUE, build_opts = c())
library(Demo)
# Use this to view the vignette in the Demo HTML help
help(package = "mypackage", help_type = "html")
# Use this to view the vignette as an isolated HTML file
utils::browseVignettes(package = "mypackage")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(mypackage)
## basic example code
```

