Vagrant.configure("2") do |config|

	# Define the node box as the primary one
    config.vm.define "jenkins_1", primary: true do |jenkins|
        
		# Set VM hardware specifications
		jenkins.vm.provider "virtualbox" do |v|
			v.memory = 2048
			v.cpus = 2
		   #v.gui = true
		end
		
		jenkins.vm.box = "centos/7"
		
		# Prepare the network
		jenkins.vm.network "private_network", ip: "192.168.2.123"
		
		jenkins.vm.provision "shell", path: "script.sh"

    end
    # Define the node box as the primary one
    config.vm.define "jenkins_2", primary: true do |jenkins|
        
		# Set VM hardware specifications
		jenkins.vm.provider "virtualbox" do |v|
			v.memory = 2048
			v.cpus = 2
		   #v.gui = true
		end
		
		jenkins.vm.box = "centos/7"
		
		# Prepare the network
		jenkins.vm.network "private_network", ip: "192.168.2.124"
		
		jenkins.vm.provision "shell", path: "script.sh"

    end
	
end
