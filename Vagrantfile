Vagrant.configure("2") do |config|

  config.vm.box = "io37/kemerovo"
  config.vm.box_version = "0.1.0"
  config.vm.synced_folder "/Volumes/vagrant/shared", "/shared"

  config.vm.network "forwarded_port", guest: 3000, host: 2000
  config.vm.network "forwarded_port", guest: 3001, host: 2001
  config.vm.network "forwarded_port", guest: 8000, host: 2002
  config.vm.network "forwarded_port", guest: 8080, host: 2003
  config.vm.network "forwarded_port", guest: 6800, host: 2004
end
