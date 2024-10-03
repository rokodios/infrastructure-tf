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
     clone        = "template-opnsens"
     full_clone   = true
     agent        = 0 
     boot         = "order=scsi0;net0"
     scsihw	      = "virtio-scsi-pci"

   ## Disk SCSI ##
      disks{
        scsi{
          scsi0{
            disk{
              size = "10G"
              storage = "storage-vm"
            }
          }
        }
      }
       
 }
