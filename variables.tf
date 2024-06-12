## Sensitive variables ##
variable "prx_pass" {
  type = string
  sensitive = true
}

variable "prx_usr" {
  type = string
  sensitive = true
}

variable "prx_ip" {
  type = string
  sensitive = true
}

variable "vm_pass" {
  type = string
  sensitive = true
}
variable "vm_usr" {
  type = string
  sensitive = true
}

## VMs Variables creation ##
variable "vms" {
  description = "Map of VMs to create"
  type = map(object({
    ## VM config ##
    name_host        = string
    domain_host      = string
    id_vm            = number
    node_env         = string
    template_clone   = string
    full_clone       = bool
    os_type          = string
    qemu_agent       = number
    ## VM Specs ##
    vm_ram           = number
    cpu_model        = string
    cpu_sockets      = number
    cpu_cores        = number
    scsi_hw          = string
    vm_hdd_size      = number
    hhd_storage_pool = string
    ci_storage_pool  = string
    ## VM network configure ##
    nic_model        = string
    nic_bridge       = string
    vm_ip_v4         = string
    subnet           = number
    gateway          = string
    nameservers      = string
    skip_ipv6        = bool
    ## VM access rsa & user ##
    ci_rsa_pub       = string
  }))
}