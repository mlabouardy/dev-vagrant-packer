load 'config.rb'

Vagrant.configure('2') do |config|
  config.vm.box = $image
  config.vm.hostname = $machine
  config.vm.provider 'virtualbox' do |vb|
     vb.name = $machine
     vb.memory = $memory
     vb.gui = $gui
     vb.cpus = $cpu
  end
  config.vm.network 'private_network', ip:$ip
  config.vm.synced_folder './volumes', '/home/vagrant/'
  config.vm.provision 'shell', path: 'bootstrap.sh'
  config.ssh.insert_key = true
end
