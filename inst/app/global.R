## sourcing from radiant.data
options(radiant.path.data = system.file(package = "radiant.data"))
source(file.path(getOption("radiant.path.data"), "app/global.R"), encoding = getOption("radiant.encoding", default = "UTF-8"), local = TRUE)

# sourcing from radiant base, note that path is set in base/global.R [Why is this twice?]
options(radiant.path.data = system.file(package = "radiant.data"))
source(file.path(getOption("radiant.path.data"), "app/global.R"), encoding = getOption("radiant.encoding", default = "UTF-8"), local = TRUE)

## Keeping the rest around for possible future use

## setting path for figures in help files
# addResourcePath("figures_design", file.path(getOption("radiant.path.design"),"app/tools/help/figures/"))

## setting path for www resources
# addResourcePath("www_design", file.path(getOption("radiant.path.design"),"app/www/"))

## loading url information
# source(file.path(getOption("radiant.path.design"), "app/init.R"), encoding = getOption("radiant.encoding"), local = TRUE)

##

options(radiant.url.patterns = make_url_patterns())
