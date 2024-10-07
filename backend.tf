terraform {
  backend "remote" {
    organization = "devopso"
    workspaces {
      name       = "infrastructure-tf"
    }
  }
}