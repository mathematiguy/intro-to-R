#' The goal of this source file is to install the tidyverse package.
#' 
#' To that aim, it installs dependencies first, starting with cellranger,
#' which is a dependency for readxl (which is itself a dependency for tidyverse).
#' 
#' After installing readxl, it installs a number of other dependencies before
#' installing tidyverse from source.
#' 
#' The readxl and tidyverse packages are stored locally in the packages folder
#' (this is to get around firewall problems). These are installed using:
#' install.packages("<package_name>", source = TRUE, repos = NULL)
#' 
#' The source = TRUE and repos = NULL arguments are necessary when installing
#' a package from a local source file (rather than remotely via CRAN).
#'

# install tidyverse dependencies from CRAN
install.packages(c("cellranger", 'cli', 'dbplyr', 'forcats', 'ggplot2', 'haven',
                   'modelr', 'reprex', 'rvest', 'tidyr'))

# install readxl from source <- this is a dependency for tidyverse
install.packages("packages/readxl_1.0.0.tar.gz", source = TRUE, repos = NULL)

# install tidyverse from source
install.packages("packages/tidyverse_1.2.1.tar.gz", source = TRUE, repos = NULL)

# Other packages
install.packages("prettydoc")
