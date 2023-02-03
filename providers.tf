provider "digitalocean" {
  token             = var.digitalocean_token
  spaces_access_id  = var.digitalocean_spaces_access_key
  spaces_secret_key = var.digitalocean_spaces_access_key_secret
}
