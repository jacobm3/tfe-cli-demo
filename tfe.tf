terraform {
  backend "remote" {
    hostname = "ptfe-demo.jacobm.hashidemos.io"
    organization = "demo-org"

    workspaces {
      name = "cli-workspace"
    }
  }
}
