
Vagrant.configure("2") do |config|
  
	config.vm.provision "shell", inline: "echo Hello"

	config.vm.define "debian1" do |web|
		web.vm.box = "debian/stretch64"
		# Create a public network, which generally matched to bridged network.
		# Bridged networks make the machine appear as another physical device on
		# your network.
		web.vm.network "public_network"
		
		web.vm.provision "shell", inline: "echo '
ssh-rsa <AUTHORIZED_PUBLIC_KEY_1>
ssh-rsa <AUTHORIZED_PUBLIC_KEY_2>
...
ssh-rsa <AUTHORIZED_PUBLIC_KEY_N>
		 '>> .ssh/authorized_keys"
		
		
		web.vm.provision "shell", path: "puppet-debian.sh"

		#
		web.vm.provider "virtualbox" do |vb|
			#   # Customize the amount of memory on the VM:
			vb.memory = "1024"
		end
	end
end

