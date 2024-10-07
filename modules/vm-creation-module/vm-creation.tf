### Plugin Provider ###
terraform {
  required_providers {
    proxmox   = {
      source  = "Telmate/proxmox"
      version = "3.0.1-rc4"
    }
  }
}
##Module creation vm##
resource "proxmox_vm_qemu" "ci_vm" {
  for_each = var.vms_module
  ## VM details ##
  name         = "${each.value.name_host}.${each.value.domain_host}"
  target_node  = each.value.node_env
  vmid	       = each.value.id_vm
  clone        = each.value.template_clone
  full_clone   = each.value.full_clone
  os_type      = each.value.os_type
  agent        = each.value.qemu_agent

## VM specs  ##
  memory       = each.value.vm_ram
  sockets      = each.value.cpu_sockets
  cores        = each.value.cpu_cores
  cpu	         = each.value.cpu_model
  scsihw	     = each.value.scsi_hw

##  VM disks units config ##
  disks{
    scsi{
      scsi0{
        disk{
          size    = each.value.vm_hdd_size
          storage = each.value.hhd_storage_pool
        }
      }
    }
    ide{
      ide3{
        cloudinit{
          storage = each.value.ci_storage_pool
        }
      }
    }
  }

## VM network configure ##
  network {
    model      = each.value.nic_model
    bridge	   = each.value.nic_bridge
  }

 ## VM init-cloud config ##
  ciuser       = var.vm_usr_module
  cipassword   = var.vm_pass_module
  sshkeys      = each.value.ci_rsa_pub
  ipconfig0    = "ip=${each.value.vm_ip_v4}/${each.value.subnet},gw=${each.value.gateway}"
  nameserver   = each.value.nameservers
  skip_ipv6    = each.value.skip_ipv6
  
 ## Snippet load cloud init scripts ##
  cicustom = "user=local:snippets/cloud-init-userdata.yml"

}

