#' @export
#' @name op-star-rep
#' @title Star operator
#' @description Behaves like normal \link[base]{*} except if one operand is
#' numeric and the other operand is of type character. In that case, each
#' element of the character vector is replicated and the replicates are pasted
#' together.
#' @usage x * y
#' @param x,y numeric or complex vectors or objects which can be coerced to
#' such, or other objects for which methods have been written, or a combination
#' of numeric and character vectors.
#' @return Same as \link[base]{*}, except if one operand is numeric and the
#' other operand is of type character. In that case, each element of the
#' character vector is replicated, the replicates are pasted together and the
#' result is returned.
#' @examples
#' "a" * 3
#' c("a", "b") * 3
#' 3 * "a"
#' 3 * c("a", "b")
`*` <- function(x, y) {
  if (is.character(x) && is.numeric(y)) {
    e1s <- lapply(1:y, function(.) x)
    do.call(paste0, args=e1s)
  } else if (is.character(y) && is.numeric(x)) {
    e2s <- lapply(1:x, function(.) y)
    do.call(paste0, args=e2s)
  } else {
    base::`*`(x, y)
  }
}
