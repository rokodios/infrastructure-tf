## Module VM creation ##
module "vm_creation" {
 source      = "./modules/vm-creation-module"
 vms_module = var.vms
}

