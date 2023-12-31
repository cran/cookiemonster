% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/delete.r
\name{delete_cookies}
\alias{delete_cookies}
\title{Delete Cookies}
\usage{
delete_cookies(
  domain,
  key = "",
  jar = default_jar(),
  fixed = FALSE,
  ask = TRUE
)
}
\arguments{
\item{domain}{The domain for which the cookies should be deleted.}

\item{key}{An optional filter to retrieve only certain cookies by matching
certain keys/names. Accepts regular expression depending on the value of
\code{fixed}.}

\item{jar}{A character string of the path to the cookie jar (the default is
to use \code{default_jar()} to get a suitable directory).}

\item{fixed}{If \code{TRUE}, \code{domain} and \code{key} are matched as is.
If either \code{domain} or \code{key}, only those values are treated as is.}

\item{ask}{A logical value indicating whether the user should be asked to
confirm the deletion.}
}
\value{
Nothing. Called to remove cookies from jar.
}
\description{
Delete Cookies
}
\examples{
# to conform with CRAN policies, examples use a temporary location. Do not use
# the options like this, except you want your cookies gone when closing R.
options(cookie_dir = tempdir())

add_cookies(cookiefile = system.file("extdata", "cookies.txt", package = "cookiemonster"))
delete_cookies("example.com", ask = FALSE)
}
