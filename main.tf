## Variables VMs Ubuntu ##
variable "vms" {
 description = "Map of VMs to create"
 type = map(object({
  name_host        = string
  id_vm            = string
  vm_ram           = string
  cpu_sockets      = string
  cpu_cores        = string
  vm_hdd_size      = string
  vm_ip_v4         = string
 }))
}

module "vms" {
 source      = "./modules/vm-cloud-init-ubuntu"

 for_each = var.vms

  name_host   = each.value.name_host
  id_vm       = each.value.id_vm
  vm_ram      = each.value.vm_ram
  cpu_sockets = each.value.cpu_sockets
  cpu_cores   = each.value.cpu_cores
  vm_hdd_size = each.value.vm_hdd_size
  vm_ip_v4    = each.value.vm_ip_v4
}

