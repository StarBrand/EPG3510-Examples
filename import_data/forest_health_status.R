forest_url <- "https://www.uni-goettingen.de/de/document/download/f5ef58e05aff8b6546dcf993aa73a480.raw/beach.raw"

forest_health_status <- read.table(
  url(forest_url),
  header = 1,
  colClasses = c(
    "factor", "numeric", "factor",
    "numeric", "numeric", "numeric",
    "numeric", "numeric", "numeric",
    "numeric", "numeric", "factor",
    "factor", "factor", "factor",
    "factor"
  ),
  na.strings = "."
)
