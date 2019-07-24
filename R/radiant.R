#' Launch Radiant Lite in the default browser
#'
#' @details See \url{https://radiant-r.github.io/docs} for documentation and tutorials
#'
#' @examples
#' \dontrun{
#' radiant.lite::radiant()
#' }
#' @export
radiant <- function() {
  message("Starting Radiant Lite...")
  if (!"package:radiant.lite" %in% search()) {
    if (!suppressMessages(require(radiant.lite)))
      stop("Calling radiant.lite start function but radiant.lite is not installed.")
  }
  shiny::runApp(system.file("app", package = "radiant.lite"), launch.browser = TRUE)
}
