zambia_url <- "https://www.uni-goettingen.de/de/document/download/d90a2d7b26c4504ab6630cf36cbae2fa.raw/zambia_height92.raw"

malnutrition_zambia <- read.table(
  url(zambia_url),
  header = 1,
  colClasses = c(
    "numeric", "factor", "numeric",
    "integer", "numeric", "numeric",
    "numeric", "factor", "factor",
    "factor", "factor", "factor"
  )
)

# Convert to logical
malnutrition_zambia$m_work <- malnutrition_zambia$m_work == 1
