variable "auth0_client_id" {}
variable "auth0_client_secret" {}

provider "auth0" {
  domain = "jacopen.auth0.com"
  client_id = var.auth0_client_id
  client_secret = var.auth0_client_secret
}