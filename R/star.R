#' @export
#' @name op-star-rep
#' @title Star operator
#' @description Behaves like normal `*` except if one operand is numeric and
#' the other operand is of type character. In that case, each element of the
#' character vector is replicated and the replicates are pasted together.
#' @examples
#' "a" * 3
#' c("a", "b") * 3
#' 3 * "a"
#' 3 * c("a", "b")
`*` <- function(e1, e2) {
  if (is.character(e1) && is.numeric(e2)) {
    e1s <- lapply(1:e2, function(.) e1)
    do.call(paste0, args=e1s)
  } else if (is.character(e2) && is.numeric(e1)) {
    e2s <- lapply(1:e1, function(.) e2)
    do.call(paste0, args=e2s)
  } else {
    base::`*`(e1, e2)
  }
}
