# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "vm1-ivalcleb" do |vm_proj|
    vm_proj.vm.box = "roboxes/ubuntu2204"
    vm_proj.vm.hostname = "vm1-ivalcleb"
    
    # Rede pública 
    vm_proj.vm.network "public_network", bridge: "wlp1s0"
    
    # Rede privada
    vm_proj.vm.network "private_network", ip: "192.168.57.14"
    
    
    vm_proj.vm.provider "virtualbox" do |vb|
      vb.name = vm_proj.vm.hostname
      vb.memory = "1024"
      vb.gui = false
    end

    
    vm_proj.vm.provision "shell", path: "config.sh"

    
    (0..2).each do |x|
      vm_proj.vm.disk :disk, size: "1GB", name: "disk-#{x}"
    end
  end
end

