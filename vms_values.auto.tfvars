 vms = {
    master01 = {
      ## VM config ##
      name_host        = "master01"
      domain_host      = "devopso.lab"
      id_vm            = 301
      node_env         = "proxmox"
      template_clone   = "template-ubuntu"
      full_clone       = true
      os_type          = "cloud-init"
      qemu_agent       = 1
      ## VM HW Specs ##
      vm_ram           = 2048
      cpu_model        = "x86-64-v2-AES"
      cpu_sockets      = 1
      cpu_cores        = 2
      scsi_hw          = "virtio-scsi-pci"
      vm_hdd_size      = 50
      hhd_storage_pool = "storage-vm"
      ci_storage_pool  = "storage-vm"
      ## VM network configure ##
      nic_model        = "virtio"
      nic_bridge       = "vmbr0"
      vm_ip_v4         = "192.168.1.210"
      subnet           = 24
      gateway          = "192.168.1.1"
      nameservers      = "192.168.1.1 8.8.8.8"
      skip_ipv6        = true
      ## VM access rsa ##
      ci_rsa_pub       = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCpQIIY1NFWkh7JLp4bpmJIQy7nemcU+lulmTcseck0HIzTeDMo14khADGa2Oh+2oaxf+XLvKscRovAxPouF38Fq5gHESW4TYldUw9rq1ha6Ym7RWNbn5DEUkY3FU6UOfLmhqgOEsUWWDI0akGVHLlVkyPJsj6JGM/D9hvXieJcKaoVhxHeo6wdKgUnFpuQiCHpIyknTuzGkb4tNsudduMROzCge/7UroPyeSZoylHnd0EWeq3Hd2SZzw0oDPpYd1i1MccNLJwy1fsI/PMBcxoJhX8b1hTp8St3URnOeIY6lkO1cTUe2vsotYFiyArElwmx71tEeSTwb5N6HsrWwro9 atorres@devopso.org"
    }
   worker01 = {
     ## VM config ##
     name_host        = "worker01"
     domain_host      = "devopso.lab"
     id_vm            = 302
     node_env         = "proxmox"
     template_clone   = "template-ubuntu"
     full_clone       = true
     os_type          = "cloud-init"
     qemu_agent       = 1
     ## VM HW Specs ##
     vm_ram           = 2048
     cpu_model        = "x86-64-v2-AES"
     cpu_sockets      = 1
     cpu_cores        = 2
     scsi_hw          = "virtio-scsi-pci"
     vm_hdd_size      = 50
     hhd_storage_pool = "storage-vm"
     ci_storage_pool  = "storage-vm"
     ## VM network configure ##
     nic_model        = "virtio"
     nic_bridge       = "vmbr0"
     vm_ip_v4         = "192.168.1.211"
     subnet           = 24
     gateway          = "192.168.1.1"
     nameservers      = "192.168.1.1 8.8.8.8"
     skip_ipv6        = true
     ## VM access rsa & users ##
     ci_rsa_pub       = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCpQIIY1NFWkh7JLp4bpmJIQy7nemcU+lulmTcseck0HIzTeDMo14khADGa2Oh+2oaxf+XLvKscRovAxPouF38Fq5gHESW4TYldUw9rq1ha6Ym7RWNbn5DEUkY3FU6UOfLmhqgOEsUWWDI0akGVHLlVkyPJsj6JGM/D9hvXieJcKaoVhxHeo6wdKgUnFpuQiCHpIyknTuzGkb4tNsudduMROzCge/7UroPyeSZoylHnd0EWeq3Hd2SZzw0oDPpYd1i1MccNLJwy1fsI/PMBcxoJhX8b1hTp8St3URnOeIY6lkO1cTUe2vsotYFiyArElwmx71tEeSTwb5N6HsrWwro9 atorres@devopso.org"
   }
   worker02 = {
     ## VM config ##
     name_host        = "worker02"
     domain_host      = "devopso.lab"
     id_vm            = 303
     node_env         = "proxmox"
     template_clone   = "template-ubuntu"
     full_clone       = true
     os_type          = "cloud-init"
     qemu_agent       = 1
     ## VM HW Specs ##
     vm_ram           = 2048
     cpu_model        = "x86-64-v2-AES"
     cpu_sockets      = 1
     cpu_cores        = 2
     scsi_hw          = "virtio-scsi-pci"
     vm_hdd_size      = 50
     hhd_storage_pool = "storage-vm"
     ci_storage_pool  = "storage-vm"
     ## VM network configure ##
     nic_model        = "virtio"
     nic_bridge       = "vmbr0"
     vm_ip_v4         = "192.168.1.212"
     subnet           = 24
     gateway          = "192.168.1.1"
     nameservers      = "192.168.1.1 8.8.8.8"
     skip_ipv6        = true
     ## VM access rsa & users ##
     ci_rsa_pub       = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCpQIIY1NFWkh7JLp4bpmJIQy7nemcU+lulmTcseck0HIzTeDMo14khADGa2Oh+2oaxf+XLvKscRovAxPouF38Fq5gHESW4TYldUw9rq1ha6Ym7RWNbn5DEUkY3FU6UOfLmhqgOEsUWWDI0akGVHLlVkyPJsj6JGM/D9hvXieJcKaoVhxHeo6wdKgUnFpuQiCHpIyknTuzGkb4tNsudduMROzCge/7UroPyeSZoylHnd0EWeq3Hd2SZzw0oDPpYd1i1MccNLJwy1fsI/PMBcxoJhX8b1hTp8St3URnOeIY6lkO1cTUe2vsotYFiyArElwmx71tEeSTwb5N6HsrWwro9 atorres@devopso.org"
   }
penecaliente01 = {
      ## VM config ##
      name_host        = "penecaliente01"
      domain_host      = "devopso.lab"
      id_vm            = 6969
      node_env         = "proxmox"
      template_clone   = "template-ubuntu"
      full_clone       = true
      os_type          = "cloud-init"
      qemu_agent       = 1
      ## VM HW Specs ##
      vm_ram           = 2048
      cpu_model        = "x86-64-v2-AES"
      cpu_sockets      = 1
      cpu_cores        = 2
      scsi_hw          = "virtio-scsi-pci"
      vm_hdd_size      = 50
      hhd_storage_pool = "storage-vm"
      ci_storage_pool  = "storage-vm"
      ## VM network configure ##
      nic_model        = "virtio"
      nic_bridge       = "vmbr0"
      vm_ip_v4         = "192.168.1.69"
      subnet           = 24
      gateway          = "192.168.1.1"
      nameservers      = "192.168.1.1 8.8.8.8"
      skip_ipv6        = true
      ## VM access rsa ##
      ci_rsa_pub       = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCpQIIY1NFWkh7JLp4bpmJIQy7nemcU+lulmTcseck0HIzTeDMo14khADGa2Oh+2oaxf+XLvKscRovAxPouF38Fq5gHESW4TYldUw9rq1ha6Ym7RWNbn5DEUkY3FU6UOfLmhqgOEsUWWDI0akGVHLlVkyPJsj6JGM/D9hvXieJcKaoVhxHeo6wdKgUnFpuQiCHpIyknTuzGkb4tNsudduMROzCge/7UroPyeSZoylHnd0EWeq3Hd2SZzw0oDPpYd1i1MccNLJwy1fsI/PMBcxoJhX8b1hTp8St3URnOeIY6lkO1cTUe2vsotYFiyArElwmx71tEeSTwb5N6HsrWwro9 atorres@devopso.org"
    }
penecaliente02 = {
      ## VM config ##
      name_host        = "penecaliente02"
      domain_host      = "devopso.lab"
      id_vm            = 6968
      node_env         = "proxmox"
      template_clone   = "template-ubuntu"
      full_clone       = true
      os_type          = "cloud-init"
      qemu_agent       = 1
      ## VM HW Specs ##
      vm_ram           = 2048
      cpu_model        = "x86-64-v2-AES"
      cpu_sockets      = 1
      cpu_cores        = 2
      scsi_hw          = "virtio-scsi-pci"
      vm_hdd_size      = 50
      hhd_storage_pool = "storage-vm"
      ci_storage_pool  = "storage-vm"
      ## VM network configure ##
      nic_model        = "virtio"
      nic_bridge       = "vmbr0"
      vm_ip_v4         = "192.168.1.169"
      subnet           = 24
      gateway          = "192.168.1.1"
      nameservers      = "192.168.1.1 8.8.8.8"
      skip_ipv6        = true
      ## VM access rsa ##
      ci_rsa_pub       = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCpQIIY1NFWkh7JLp4bpmJIQy7nemcU+lulmTcseck0HIzTeDMo14khADGa2Oh+2oaxf+XLvKscRovAxPouF38Fq5gHESW4TYldUw9rq1ha6Ym7RWNbn5DEUkY3FU6UOfLmhqgOEsUWWDI0akGVHLlVkyPJsj6JGM/D9hvXieJcKaoVhxHeo6wdKgUnFpuQiCHpIyknTuzGkb4tNsudduMROzCge/7UroPyeSZoylHnd0EWeq3Hd2SZzw0oDPpYd1i1MccNLJwy1fsI/PMBcxoJhX8b1hTp8St3URnOeIY6lkO1cTUe2vsotYFiyArElwmx71tEeSTwb5N6HsrWwro9 atorres@devopso.org"
    }
}
