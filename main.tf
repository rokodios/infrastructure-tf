## Cluster K8s ##
module "master_01" {
 source      = "./modules/vm-cloud-init-ubuntu"
  name_host   = "master01"
  id_vm       = "301"
  vm_ram      = "2048"
  cpu_sockets = "1"
  cpu_cores   = "2"
  vm_hdd_size = "50"
  vm_ip_v4    = "192.168.1.210"
  proxmox_password = "Aaa10735!!.."
}