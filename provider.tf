### Plugin Provider ###
terraform {
  required_providers {
    proxmox   = {
      source  = "Telmate/proxmox"
      version = "3.0.1-rc2"
    }
  }
}

### Provider ###
provider "proxmox" {
  pm_api_url      = "https://192.168.1.200:8006/api2/json"
  pm_user         = "terraform-prov@pve"
  pm_password     = "Aaa10735!!.."
  pm_tls_insecure = true
}