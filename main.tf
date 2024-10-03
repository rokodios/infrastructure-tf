## Module VM creation Generic Cloud init ##
module "vm_creation" {
 source      = "./modules/vm-creation-module"
 vms_module = var.vms
 vm_usr_module = var.vm_usr
 vm_pass_module = var.vm_pass
}

## OPNsense specific VM ##

resource "proxmox_vm_qemu" "opnsense" {
     name_host        = "fw-core-01"
     domain_host      = "devopso.lab"
     id_vm            = 200
     node_env         = "proxmox"
     template_clone   = "template-opnsense"
     full_clone       = true
     qemu_agent       = 0
     hhd_storage_pool = "storage-vm"
   }
