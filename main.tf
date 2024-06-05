## Variables VMs Ubuntu ##
module "master_01" {
 source      = "./modules/vm-cloud-init-ubuntu"
  name_host   = "master01"
  id_vm       = "301"
  vm_ram      = "2048"
  cpu_sockets = "1"
  cpu_cores   = "2"
  vm_hdd_size = "50"
  vm_ip_v4    = "192.168.1.210"
}

module "worker_01" {
 source      = "./modules/vm-cloud-init-ubuntu"
 name_host   = "worker01"
 id_vm       = "302"
 vm_ram      = "2048"
 cpu_sockets = "1"
 cpu_cores   = "2"
 vm_hdd_size = "50"
 vm_ip_v4    = "192.168.1.211"
}

module "worker_02" {
 source      = "./modules/vm-cloud-init-ubuntu"
 name_host   = "worker02"
 id_vm       = "303"
 vm_ram      = "2048"
 cpu_sockets = "1"
 cpu_cores   = "2"
 vm_hdd_size = "50"
 vm_ip_v4    = "192.168.1.212"
}
