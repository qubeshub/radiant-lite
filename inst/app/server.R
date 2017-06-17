shinyServer(function(input, output, session) {

  ## source shared functions
  source(file.path(getOption("serenity.path.data"),"app/init.R"), encoding = getOption("serenity.encoding"), local = TRUE)
  source(file.path(getOption("serenity.path.data"),"app/serenity.R"), encoding = getOption("serenity.encoding"), local = TRUE)

  ## source data & app tools from serenity.data
  for (file in list.files(c(file.path(getOption("serenity.path.data"),"app/tools/app"),
                            file.path(getOption("serenity.path.data"),"app/tools/data")),
                          pattern = "\\.(r|R)$", full.names = TRUE))
    source(file, encoding = getOption("serenity.encoding"), local = TRUE)

  ## list of serenity menu's to include
  rmenus <- c("serenity.data")

  ## packages to use for example data
  options(serenity.example.data = rmenus)

  for (i in rmenus[-1]) {
    ## 'sourcing' serenity's package functions in the server.R environment
    eval(parse(text = paste0("serenity.data::copy_all(",i,")")))

    ipath <- paste0(strsplit(i,"\\.")[[1]], collapse = ".path.")

    ## help ui
    source(file.path(getOption(ipath), "app/help.R"), encoding = getOption("serenity.encoding"), local = TRUE)

    ## source analysis tools for each app
    for (file in list.files(file.path(getOption(ipath),"app/tools/analysis"), pattern="\\.(r|R)$", full.names = TRUE))
      source(file, encoding = getOption("serenity.encoding"), local = TRUE)
  }

  ## ui creation functions
  # source(file.path(getOption("serenity.path.model"),"app/serenity.R"), encoding = getOption("serenity.encoding"), local = TRUE)

  ## help ui
  output$help_ui <- renderUI({
    sidebarLayout(
      sidebarPanel(
        help_data_panel,
        uiOutput("help_text"),
        width = 3
      ),
      mainPanel(
        HTML(paste0("<h2>Select help files to show and search</h2><hr>")),
        htmlOutput("help_data")
      )
    )
  })

  ## save state on refresh or browser close
  saveStateOnRefresh(session)

})
