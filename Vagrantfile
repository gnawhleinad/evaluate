# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "chef/centos-7.1"
  config.vm.hostname = "evaluate.test"

  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.provision "shell" do |s|
    s.path = "scripts/vagrant-provision.sh"
    s.args = ["docker"]
  end
end
