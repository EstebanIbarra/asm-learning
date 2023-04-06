Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/lunar64"
    config.vm.provision "shell", path: "vagrantSetup.sh"
    config.vm.provider :virtualbox do |vb|
        vb.name = "x86 ASM Learning Path -> Ubuntu Lunar 64"
    end
end