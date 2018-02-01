Vagrant.configure("2") do |config|

  config.vm.box = "io37/kemerovo"
  config.vm.box_version = "0.1.1"
  config.vm.synced_folder "../shared", "/shared"
  
  config.vm.network "forwarded_port", guest: 3100, host: 3100
  config.vm.network "forwarded_port", guest: 3000, host: 13000
  config.vm.network "forwarded_port", guest: 3001, host: 13001
  config.vm.network "forwarded_port", guest: 8000, host: 18000
  config.vm.network "forwarded_port", guest: 8080, host: 18080
end
