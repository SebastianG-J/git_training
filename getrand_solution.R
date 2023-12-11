library(httr2)
req <- request("http://165.22.92.178:8080") %>% 
  req_url_path("getrand") %>%
  req_url_query(which_seed = 9235) %>%
  req_headers(authorization = "123#!_DM_DV")
# Inspect request object
req
# Send the request to the API
resp <- req %>% 
  req_perform()
# Inspect the response format
resp
# Parse the response body as json
resp %>%
  resp_body_json()