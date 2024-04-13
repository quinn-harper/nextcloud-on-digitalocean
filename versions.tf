terraform {


  cloud {
    organization = "mikolajk"

    workspaces {
      name = "nextcloud-on-digitalocean"
    }
  }


  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}