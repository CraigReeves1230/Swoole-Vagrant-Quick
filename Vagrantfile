# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "raybird/swoole"
  config.vm.network "private_network", type: "dhcp"
  config.vm.provision "shell", path: "provision.sh"
end