apps <- c("radiant.lite.data", "radiant.lite")

## build for mac
path <- "~/gh"
curr <- getwd(); setwd(path)
build_app <- function(app) {
	f <- devtools::build(file.path(path, app))
	system(paste0("R CMD INSTALL --build ", f))
}
sapply(apps, build_app)
setwd(curr)
