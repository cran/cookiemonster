## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = FALSE
)

## ----setup--------------------------------------------------------------------
#  library(cookiemonster)

## ----eval=FALSE---------------------------------------------------------------
#  file.copy(
#    from = system.file("extdata", "cookies.txt", package = "cookiemonster"),
#    to = "."
#  )

## ----eval=FALSE---------------------------------------------------------------
#  add_cookies(cookiefile = "cookies.txt")

## ----echo=FALSE---------------------------------------------------------------
#  add_cookies(cookiefile = system.file("extdata", "cookies.txt", package = "cookiemonster"))

## -----------------------------------------------------------------------------
#  default_jar()

## -----------------------------------------------------------------------------
#  options(cookie_dir = tempdir())
#  default_jar()

## -----------------------------------------------------------------------------
#  options(cookie_dir = NULL)
#  default_jar()

## -----------------------------------------------------------------------------
#  get_cookies("https://hb.cran.dev")

## -----------------------------------------------------------------------------
#  library(httr2)
#  resp <- request("https://hb.cran.dev/cookies/set") |> # start a request
#    req_options(cookie = get_cookies("https://hb.cran.dev", as = "string")) |> # add cookies to be sent with it
#    req_perform() # perform the request
#  
#  resp |>
#    resp_body_json()

## -----------------------------------------------------------------------------
#  library(httr)
#  GET("https://hb.cran.dev/cookies/set", set_cookies(get_cookies("https://hb.cran.dev", as = "vector")))

## -----------------------------------------------------------------------------
#  library(curl)
#  h <- new_handle()
#  handle_setopt(h, cookie = get_cookies("https://hb.cran.dev", as = "string"))
#  resp <- curl_fetch_memory("https://hb.cran.dev/cookies/set", handle = h)
#  jsonlite::fromJSON(rawToChar(resp$content))

## -----------------------------------------------------------------------------
#  h2 <- new_handle()
#  resp <- curl_fetch_memory("https://hb.cran.dev/cookies/set?new_cookies=moo", handle = h2)
#  handle_cookies(h2)

## -----------------------------------------------------------------------------
#  new_cookies <- handle_cookies(h2)
#  store_cookies(new_cookies)
#  get_cookies("https://hb.cran.dev")

