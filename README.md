<!-- badges: start -->
[![R build status](https://github.com/toscm/toscmask/workflows/R-CMD-check/badge.svg)](https://github.com/toscm/toscmask/actions)
<!-- badges: end -->

# toscmask

Operators and functions provided by base R sometimes lack some
features found in other programming languages, such as the abilitiy to
concatenate strings using + or to repeat strings using *. This package aims
at providing such functionality without breaking existing code, i.e., only
statements, that would throw errors in pure base R are patched.

## Installation

```R
devtools::install_github("toscm/toscmask")
```

## Examples

```R
library("toscmask")
## Produces message:
## Attaching package: 'toscmask'
## The following objects are masked from 'package:base': *, +
cat("a" + "b") # prints ab
cat("a" + 1)   # prints a1
cat(1 + "b")   # prints 1b
cat("-" * 10)  # prints ----------
cat(10 * "-")  # prints ----------
```
