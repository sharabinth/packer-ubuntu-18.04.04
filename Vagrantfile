# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  config.vm.box = "ubuntu-18.04.04-with-docker-ce-0.1.box"

  config.vm.define "vm-bionic64-base" do |vm1|
    vm1.vm.hostname = "vm-bionic64-base"
    vm1.vm.network "private_network", ip: "192.168.56.60"

    vm1.vm.network "forwarded_port", guest: 4646, host: 4646, auto_correct: true
    
    vm1.vm.provider "virtualbox" do |vb|
      vb.name = "vm-bionic64-base"
    end

  end

end
