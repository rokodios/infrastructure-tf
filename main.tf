terraform {
  required_providers {
    proxmox   = {
      source  = "Telmate/proxmox"
      version = "3.0.1-rc2"
    }
  }
}

provider "proxmox" {
  pm_api_url      = "https://192.168.1.200:8006/api2/json"
  pm_user         = "terraform-prov@pve"
  pm_password     = var.proxmox_password
  pm_tls_insecure = true
}

## VM1
resource "proxmox_vm_qemu" "master_k8s_01" {
  name         = "master01"
  target_node  = "proxmox"
  vmid	       = "401"
  clone        = "template-ubuntu"
  full_clone   = true

  memory       = "2048"
  cores        = "2"
  cpu	       = "x86-64-v2-AES"
  scsihw	   = "virtio-scsi-pci"
  agent        = 1
 # bootdisk	   = "scsi0"

  disks{
    scsi{
      scsi0{
        disk{
          size    = 50
          storage = "storage-vm"
        }
      }
    }
  }

  network {
    model     = "virtio"
    bridge	  = "vmbr0"
  }
  ipconfig0    = "ip=192.168.1.212/24,gw=192.168.1.1"
  nameserver   = "192.168.1.1 8.8.8.8"
  os_type      = "cloud-init"
}

##VM 2
resource "proxmox_vm_qemu" "worker_k8s_01" {
  name         = "Worker01"
  target_node  = "proxmox"
  vmid	       = "402"
  clone        = "template-ubuntu"
  full_clone   = true

  memory       = "2048"
  cores        = "2"
  cpu	       = "x86-64-v2-AES"
  scsihw  	   = "virtio-scsi-pci"
  agent        = 1
#  bootdisk	   = "scsi0"

  disks{
    scsi{
      scsi0{
        disk{
          size = 50
          storage = "storage-vm"
        }
      }
    }
  }

  network {
    model     = "virtio"
    bridge	  = "vmbr0"
  }
  ipconfig0    = "ip=192.168.1.214/24,gw=192.168.1.1"
  nameserver   = "192.168.1.1 8.8.8.8"
  os_type      = "cloud-init"
}

##VM 3
resource "proxmox_vm_qemu" "worker_k8s_02" {
  name         = "Worker02"
  target_node  = "proxmox"
  vmid	       = "403"
  clone        = "template-ubuntu"
  full_clone   = true

  memory       = "2048"
  cores        = "2"
  cpu	       = "x86-64-v2-AES"
  scsihw	   = "virtio-scsi-pci"
  agent        = 1
 # bootdisk	   = "scsi0"

  disks{
    scsi{
      scsi0{
        disk{
          size = 50
          storage = "storage-vm"
        }
      }
    }
  }

  network {
    model     = "virtio"
    bridge	  = "vmbr0"
  }
  ipconfig0    = "ip=192.168.1.215/24,gw=192.168.1.1"
  nameserver   = "192.168.1.1 8.8.8.8"
  os_type      = "cloud-init"
}