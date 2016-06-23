DOMAIN="example.local"
SUBNET="10.90.25"

#6GB memory
MEMORY=6144

#Minimum required to manage 10 nodes or less
CPUS=2

Vagrant.configure(2) do |config|
  config.vm.define "master" do |vmconfig|
    vmconfig.vm.box = "puppetlabs/ubuntu-12.04-64-nocm"
    vmconfig.vm.hostname = "master.#{DOMAIN}"
    vmconfig.vm.network "private_network", ip:"#{SUBNET}.37"
    vmconfig.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, 
                    "--memory", MEMORY,
                    "--cpus", CPUS]
    end
  end

  config.vm.define "www1" do |www1|
    www1.vm.box = "puppetlabs/ubuntu-12.04-64-nocm"
    www1.vm.hostname = "www1.#{DOMAIN}"
    www1.vm.network "private_network", ip: "#{SUBNET}.38"
  end
end
