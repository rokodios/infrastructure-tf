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