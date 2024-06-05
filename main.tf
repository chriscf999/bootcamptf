terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "cloudflare" {
 #api_token = SET ENVIRONMENT VARIABLE ON YOUR UBUNTU MACHINE
}

#Zone Settings
resource "cloudflare_zone_settings_override" "bootcamp-tf-demo" {
  zone_id = var.zone-id
  settings {
    automatic_https_rewrites = "off"
    always_use_https = "off"
    min_tls_version = "1.0"
  }
}
