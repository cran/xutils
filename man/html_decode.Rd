% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/html_decode.R
\name{html_decode}
\alias{html_decode}
\title{decode a single element character vector
using Christoph's C++ code
https://stackoverflow.com/a/1082191/10437891}
\usage{
html_decode(str)
}
\arguments{
\item{str}{A single string}
}
\value{
decoded string
}
\description{
decode a single element character vector
using Christoph's C++ code
https://stackoverflow.com/a/1082191/10437891
}
\examples{
html_decode("&amp;")
}
