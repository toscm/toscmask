#' @export
#' @name op-plus-paste
#' @title Plus operator
#' @description Behaves like normal `+` except for character vectors: here
#' `paste0` is called instead of raising an exception.
#' @examples
#' "a" + "b"
#' "abc" + 1.02
`+` <- function(e1, e2) {
  if (is.character(e1) || is.character(e2)) {
    paste0(e1, e2)
  } else {
    base::`+`(e1, e2)
  }
}
