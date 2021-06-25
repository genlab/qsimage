#' Saves an image of the global environment
#' @export
qsave_image <- function() {
  do.call(qs::qsavem,
          c(
            lapply(ls(envir = .GlobalEnv), as.symbol),
            file = "~/session.qs",
            nthreads = parallel::detectCores() / 2
          ))
}

#' Loads an image of the global environment
#' @export
qload_image <- function() {
  qs::qreadm("~/session.qs", env = .GlobalEnv, nthreads = parallel::detectCores() / 2)
}
