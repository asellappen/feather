#' Get path to feather example files
#'
#' @description `feather_example` gets the path of a specific example
#'
#' @param x example file
#' @export
#' @keywords internal
feather_example <- function(x) {
  system.file("feather", x, mustWork = TRUE, package = "feather")
}

#' @description `feather_examples` gets the path of all examples
#'
#' @export
#' @rdname feather_example
feather_examples <- function() {
  path <- feather_example("")
  stats::setNames(dir(path, full.names = TRUE), dir(path))
}
