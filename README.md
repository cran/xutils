
<!-- README.md is generated from README.Rmd. Please edit that file -->

# xutils

<!-- badges: start -->

[![Build
Status](https://travis-ci.org/fangzhou-xie/xutils.svg?branch=main)](https://travis-ci.org/fangzhou-xie/xutils)
[![License:
MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
<!-- badges: end -->

This is a package that contains functions dealing with data, which I
personally found useful. Hence the name: **x**utils.

## Installation

This package is planned to be submitted to CRAN.
<!-- You can install the released version of xutils from [CRAN](https://CRAN.R-project.org) with: -->

<!-- ``` r -->
<!-- install.packages("xutils") -->
<!-- ``` -->

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("fangzhou-xie/xutils")
```

## Example

This is a basic example of using the only function in `xutils` package:
the `html_decode` function.

``` r
# load library
library(xutils)
# create test strings
strings <- c("abcd", "&amp; &apos; &gt;", "&amp;", "&euro; &lt;")
# decode
html_decode(strings)
#> [1] "abcd"  "& ' >" "&"     "€ <"
```

## License

The package is distributed under MIT license.
