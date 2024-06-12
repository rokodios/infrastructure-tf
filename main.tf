## Module VM creation ##
module "vm_creation" {
 source      = "./modules/vm-creation-module"
 vms_module = var.vms
 vm_usr_module = var.vm_usr
 vm_pass_module = var.vm_pass
}

