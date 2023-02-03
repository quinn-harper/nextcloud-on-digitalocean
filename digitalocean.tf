resource "digitalocean_spaces_bucket" "nextcloud" {
  name   = "com.sfisoftware.documents"
  region = "nyc3"
}

resource "digitalocean_project" "mikolajk-dev" {
  name        = "mikolajk.dev"
  description = "Project for mikolajk.dev resources."
  purpose     = "Service or API"
  environment = "Production"
  resources = [
    digitalocean_droplet.server.urn,
    digitalocean_spaces_bucket.nextcloud.urn
  ]
}

resource "digitalocean_droplet" "server" {
  image             = "ubuntu-22-04-x64"
  name              = "mikolajk-dev"
  region            = "tor1"
  size              = "s-1vcpu-1gb"
  monitoring        = true
  ssh_keys          = [digitalocean_ssh_key.mikolajk-dev.id]
  tags              = ["document", "nextcloud"]
  droplet_agent     = true
  graceful_shutdown = true
}

resource "digitalocean_ssh_key" "mikolajk-dev" {
  name       = "mikolajk-dev-ssh-key"
  public_key = var.digitalocean_ssh_public_key
}