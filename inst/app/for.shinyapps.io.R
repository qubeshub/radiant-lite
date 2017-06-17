## restart before installing from github
.rs.restartR()

## install the latest version from github so it will be used on shinyapps.io
devtools::install_github("serenity-r/serenity.data", force = TRUE)
devtools::install_github("serenity-r/serenity")

# devtools::install_github("cran/Matrix")

## by listing the call to the serenity library it will get picked up as a dependency
library(serenity)
