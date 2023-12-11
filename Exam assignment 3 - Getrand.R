library(httr2)

req <- request("http://165.22.92.178:8080") %>%
  req_url_path("getrand") %>%
  req_url_query(which_seed = 8500) %>%
  req_headers(authorization = "123#!_DM_DV")

req

resp <- req %>%
  req_perform()

resp

resp %>%
  resp_body_json()
