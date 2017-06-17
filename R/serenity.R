#' Launch Serenity in the default browser
#'
#' @details See \url{https://serenity-r.github.io/docs} for documentation and tutorials
#'
#' @examples
#' \dontrun{
#' serenity::serenity()
#' }
#' @export
serenity <- function() {
  message("Starting Serenity ...")
  if (!"package:serenity" %in% search()) {
    if (!suppressMessages(require(serenity)))
      stop("Calling serenity start function but serenity is not installed.")
  }
  shiny::runApp(system.file("app", package = "serenity"), launch.browser = TRUE)
}
