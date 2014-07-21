# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|


  config.vm.box = "hashicorp/trusty64"
  config.vm.provider "lxc" do |v, override|
    override.vm.box = "fgrehm/trusty64-lxc"
  end

  config.vm.hostname = "CursoRor"

  config.vm.network "forwarded_port", guest: 3000, host: 3000
  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end

  config.vm.synced_folder "code" , "/home/vagrant/code"



  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "site.yml"
  end

  config.vm.define "rails"


end
