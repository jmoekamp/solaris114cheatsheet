# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "solaris114"
  config.ssh.private_key_path = "/Users/joergmoellenkamp/cheatsheet/keys/vagrantkey"
  config.ssh.insert_key = false
  
  config.vm.provider "virtualbox" do |vb|
     vb.gui = true
     vb.memory = "2024"
  end
  config.vm.define "node1" do |node1|
    node1.vm.box = "solaris114"
  end
  config.vm.define "node2" do |node2|
    node2.vm.box = "solaris114"
  end
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "test.yml"
  end
end
