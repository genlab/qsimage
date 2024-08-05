#' Saves an image of the global environment
#' @export
qsave_image <- function(file="~/session.qs", nthreads=8) {
  do.call(qs::qsavem,
          c(
            lapply(ls(envir = .GlobalEnv), as.symbol),
            #file = "~/session.qs",
            file=file,
            #nthreads = parallel::detectCores() / 2
            nthreads = nthreads
          ))
}

#' Loads an image of the global environment
#' @export
qload_image <- function( file="~/session.qs", nthreads=8) {
  #qs::qreadm("~/session.qs", env = .GlobalEnv, nthreads = parallel::detectCores() / 2)
  qs::qreadm(file, env = .GlobalEnv, nthreads = nthreads)
}
