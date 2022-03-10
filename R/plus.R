#' @export
#' @name op-plus-paste
#' @title Plus operator
#' @description Behaves like normal \link[base]{+} except for character
#' vectors combinations of character and numeric vectors, which are pasted
#' together.
#' @usage x + y
#' @param x,y numeric or complex vectors or objects which can be coerced to
#' such, or other objects for which methods have been written, or a combination
#' of numeric and character vectors.
#' @return Same as \link[base]{+}, except if `e1` and `e2` are two character
#' vectors or a combination of a character vector and a numeric vector, in this
#' case the result is `paste0(x, y)`.
#' @examples
#' "abc" + "def"
#' "abc" + 1.234
#' 1.234 + "abc"
#' "abc" + 2L
#' 2L + "abc"
`+` <- function(x, y) {
  if (is.character(x)) {
    if (is.character(y) || is.numeric(y)) {
      paste0(x, y)
    } else {
      base::`+`(x, y)
    }
  } else if (is.character(y)) {
    if (is.numeric(x)) { # no need to check `is.character(x)` (done above)
      paste0(x, y)
    } else {
      base::`+`(x, y)
    }
  } else {
    base::`+`(x, y)
  }
}
