#' Launch Radiant in the default browser
#'
#' @details See \url{https://radiant-r.github.io/docs} for documentation and tutorials
#'
#' @examples
#' \dontrun{
#' radiant::radiant()
#' }
#' @export
radiant <- function() {
  message("Starting Radiant ...")
  if (!"package:radiant" %in% search()) {
    if (!suppressMessages(require(radiant)))
      stop("Calling radiant start function but radiant is not installed.")
  }
  shiny::runApp(system.file("app", package = "radiant"), launch.browser = TRUE)
}
