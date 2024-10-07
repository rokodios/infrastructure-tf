## Module VM creation Generic Cloud init ##
module "vm_creation" {
 source         = "./modules/vm-creation-module"
 vms_module     = var.vms
 vm_usr_module  = var.vm_usr
 vm_pass_module = var.vm_pass
}

## OPNsense specific VM ##
resource "proxmox_vm_qemu" "opnsense" {
     name         = "fw-core-01.devopso.lab"
     vmid         = 200
     target_node  = "proxmox"
     clone        = "template-opnsense"
     full_clone   = true
     agent        = 0 
     boot         = "order=scsi1;scsi0;net0"
     memory       = 2048
     sockets      = 1
     cores        = 1
     cpu	        = "x86-64-v2-AES"
     scsihw	      = "virtio-scsi-pci"

   ## Disks SCSI ##
      disks{
        scsi{
          scsi0{
            disk{
              size    = "10G"
              storage = "storage-vm"
            }
          }
           scsi1{
            disk{
              size    = "3G"
              storage = "storage-vm"
            }
          }
        }
      }  

    ## Ignore Cloud init network configuration ##
     ipconfig0 = "" 
    ## Ignore after create this variable ##
    lifecycle {
       ignore_changes = [
         boot 
       ]
    }
 }
