patent_url <- "https://www.uni-goettingen.de/de/document/download/66eb4eb0bc0e8f6acf1d02ddf683f077.raw/patentdata.raw"

patent_opposition <- read.table(
  url(patent_url),
  header = 1,
  colClasses = c(
    "factor", "factor", "factor",
    "factor", "factor", "integer",
    "integer", "integer", "integer"
  )
)
# Convert to logical
patent_opposition$biopharm <- patent_opposition$biopharm == 1
patent_opposition$ustwin <- patent_opposition$ustwin == 1
patent_opposition$patus <- patent_opposition$patus == 1
patent_opposition$patgsgr <- patent_opposition$patgsgr == 1
