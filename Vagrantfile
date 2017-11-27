Vagrant.configure("2") do |config|
  config.vm.box = "debian/jessie64"
  config.vm.define 'kemerovo'
  config.vm.hostname = 'kemerovo'
  config.ssh.forward_x11 = true
  config.ssh.forward_agent = true
  config.vm.network "forwarded_port", guest: 3100, host: 3100
  config.vm.network "forwarded_port", guest: 3000, host: 2000
  config.vm.network "forwarded_port", guest: 3001, host: 2001
  config.vm.network "forwarded_port", guest: 8000, host: 2002
  config.vm.network "forwarded_port", guest: 8080, host: 2003
  config.vm.network "forwarded_port", guest: 6800, host: 2004
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end
end

