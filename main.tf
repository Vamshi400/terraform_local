

data "http" "example" {
  url = "https://checkpoint-api.hashicorp.com/v1/check/terraform"

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}

output "response_body" {
  value = data.http.example.body
  description = "Response body information"
}

output "respone_headers" {
  value = data.http.example.response_headers
  description = "Response headers information"
}