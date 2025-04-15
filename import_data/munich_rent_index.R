munich_rent_url <- "https://www.uni-goettingen.de/de/document/download/64c29c1b1fccb142cfa8f29a942a9e05.raw/rent99.raw"

munich_rent_index <- read.table(
  url(munich_rent_url),
  header = 1,
  colClasses = c(
    "numeric", "numeric", "numeric",
    "numeric", "factor", "factor",
    "factor", "factor", "factor"
  )
)

# Convert to logical
munich_rent_index$bath <- munich_rent_index$bath == 1
munich_rent_index$kitchen <- munich_rent_index$kitchen == 1
munich_rent_index$cheating <- munich_rent_index$cheating == 1
