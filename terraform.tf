terraform {
  required_providers {
    auth0 = {
      source = "alexkappa/auth0"
      version = "0.21.0"
    }
  }
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "kusama"

    workspaces {
      name = "wells-tf-public"
    }
  }
}