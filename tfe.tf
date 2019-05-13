terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "jacobm3"
    workspaces {
      name = "tfe-cli-demo"
    }
  }
}
