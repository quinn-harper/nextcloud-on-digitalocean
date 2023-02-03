terraform {

  cloud {
    organization = "mikolajk"

    workspaces {
      name = "mikolajk-dev-nextcloud"
    }
  }


  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}