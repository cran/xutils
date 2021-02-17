## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(xutils)

## -----------------------------------------------------------------------------
strings <- c("abcd", "&amp; &apos; &gt;", "&amp;", "&euro; &lt;")
html_decode(strings)

## -----------------------------------------------------------------------------
unescape_html2 <- function(str){
  html <- paste0("<x>", paste0(str, collapse = "#_|"), "</x>")
  parsed <- xml2::xml_text(xml2::read_html(html))
  strsplit(parsed, "#_|", fixed = TRUE)[[1]]
}

## -----------------------------------------------------------------------------
bench::mark(
  html_decode(strings),
  unescape_html2(strings),
  textutils::HTMLdecode(strings)
)

