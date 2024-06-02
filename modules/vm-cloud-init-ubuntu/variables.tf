## VM details ##
variable "name_host" {
  description = "Host name to VM"
}

variable "id_vm" {
  description = "ID to VM"
}

## VM specs  ##
variable "vm_ram" {
  description = "Specify RAM in MB"
}

variable "cpu_sockets" {
  description = "Specify CPU sockets"
}

variable "cpu_cores" {
  description = "Specify CPU cores"
}

##  VM disks units config ##
variable "vm_hdd_size" {
  description = "Specify HDD space in GB"
}

## VM init-cloud config ##
variable "vm_ip_v4" {
  description = "Specify IP V4"
}

variable "proxmox_password" {
  description = "Proxmox API Password"
}
