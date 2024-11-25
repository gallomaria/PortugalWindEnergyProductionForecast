if (!require(devtools)) {
  install.packages("devtools")
}

devtools::install_version("dplyr", version = "1.0.10", repos = "https://cloud.r-project.org/")
devtools::install_version("forecast", version = "8.19", repos = "https://cloud.r-project.org/")
devtools::install_version("fs", version = "1.5.2", repos = "https://cloud.r-project.org/")
devtools::install_version("ggplot2", version = "3.3.6", repos = "https://cloud.r-project.org/")
devtools::install_version("prophet", version = "1.0", repos = "https://cloud.r-project.org/")
devtools::install_version("stringr", version = "1.4.1", repos = "https://cloud.r-project.org/")
devtools::install_version("tidyverse", version = "1.3.2", repos = "https://cloud.r-project.org/")
devtools::install_version("tseries", version = "0.10.52", repos = "https://cloud.r-project.org/")
devtools::install_version("zoo", version = "1.8.11", repos = "https://cloud.r-project.org/")
