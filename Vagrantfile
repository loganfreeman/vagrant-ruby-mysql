# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  config.vm.box = "puppetlabs/centos-7.0-64-puppet"
  config.vm.box_version = "1.0.1"

  config.vm.network "forwarded_port", guest: 3000, host: 9000

  # config.vm.network "private_network", ip: "192.168.3.23"

  # config.vm.synced_folder "../data", "/vagrant_data"

  # config.vm.provider "virtualbox" do |vb|
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end

  # OS packages
  config.vm.provision "puppet"

  config.vm.synced_folder ".", "/vagrant", :mount_options => ["dmode=777", "fmode=666"]

  # firewall: open port 3000 for Rails HTTP
  config.vm.provision "shell", path: 'scripts/firewall.sh'

  config.vm.provision "shell", path: 'scripts/general.sh'

  config.vm.provision "shell", path: 'scripts/user.sh'

  # install RVM, Ruby, and Rails
  config.vm.provision "shell", path: 'scripts/ruby.sh', privileged: false

  config.vm.provision "shell", path: 'scripts/mysql.sh'
end
