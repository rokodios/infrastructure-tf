### Plugin Provider ###
terraform {
  required_providers {
    proxmox   = {
      source  = "Telmate/proxmox"
      version = "3.0.1-rc4"
    }
  }
}

### Provider ###
provider "proxmox" {
  pm_api_url      = "https://${var.prx_ip}:8006/api2/json"
  pm_user         = var.prx_usr
  pm_password     = var.prx_pass
  pm_tls_insecure = true
}
