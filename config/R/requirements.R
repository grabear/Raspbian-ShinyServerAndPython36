# CRAN packages
install.packages(c('devtools', 'shiny', 'shinythemes', 'shinyBS', 'shinyjs', 'europepmc', 'DT', 'data.table', 'markdown', 'rclipboard', 'shinycssloaders', 'shinydashboard', 'shinyFiles', 'shinyFeedback','shinyHeatmaply', 'shinyjqui', 'shinyWidgets', 'bsplus', 'colourpicker'), repos="https://mirrors.nics.utk.edu/cran")

# GitHub Packages
library(devtools)
install_github(c("cstubben/euPMC", "robear22890/shinyLP", "mkuhn/dict", 'ayayron/shinydnd', "Appsilon/shiny.semantic", "rstudio/miniUI", 'zachcp/msaR'))

# Bioconductor packages
source("https://bioconductor.org/biocLite.R")
biocLite(c("ggtree", "cummeRbund"))
