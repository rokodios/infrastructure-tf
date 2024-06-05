### Plugin Provider ###
terraform {
  required_providers {
    proxmox   = {
      source  = "Telmate/proxmox"
      version = "3.0.1-rc2"
    }
  }
}
##Module creation vm##
resource "proxmox_vm_qemu" "ci_vm" {
  for_each = var.vms_module
  ## VM details ##
  name         = "${each.value.name_host}.devopso.lab"
  target_node  = "proxmox"
  vmid	       = each.value.id_vm
  clone        = "template-ubuntu"
  full_clone   = true
  os_type      = "cloud-init"
  agent        = 1
  #boot = "order=scsi0;ide3"

## VM specs  ##
  memory       = each.value.vm_ram
  sockets      = each.value.cpu_sockets
  cores        = each.value.cpu_cores
  cpu	       = "x86-64-v2-AES"
  scsihw	   = "virtio-scsi-pci"

##  VM disks units config ##
  disks{
    scsi{
      scsi0{
        disk{
          size = each.value.vm_hdd_size
          storage = "storage-vm"
        }
      }
    }
    ide{
      ide3{
        cloudinit{
          storage = "storage-vm"
        }
      }
    }
  }

## VM network configure ##
  network {
    model     = "virtio"
    bridge	  = "vmbr0"
  }

 ## VM init-cloud config ##
  ciuser       = "atorres"
  cipassword   = "Aaa10735!!.."
  sshkeys      = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCpQIIY1NFWkh7JLp4bpmJIQy7nemcU+lulmTcseck0HIzTeDMo14khADGa2Oh+2oaxf+XLvKscRovAxPouF38Fq5gHESW4TYldUw9rq1ha6Ym7RWNbn5DEUkY3FU6UOfLmhqgOEsUWWDI0akGVHLlVkyPJsj6JGM/D9hvXieJcKaoVhxHeo6wdKgUnFpuQiCHpIyknTuzGkb4tNsudduMROzCge/7UroPyeSZoylHnd0EWeq3Hd2SZzw0oDPpYd1i1MccNLJwy1fsI/PMBcxoJhX8b1hTp8St3URnOeIY6lkO1cTUe2vsotYFiyArElwmx71tEeSTwb5N6HsrWwro9 atorres@devopso.org"
  ipconfig0    = "ip=${each.value.vm_ip_v4}/24,gw=192.168.1.1"
  nameserver   = "192.168.1.1 8.8.8.8"
  skip_ipv6    = true
}