# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don"t touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.provision "shell", inline: "sudo apt-get update; sudo apt-get install -y python-apt"
  config.vm.provision "ansible" do |ansible|
     ansible.playbook = "provisioning/setroot.yml"
     ansible.host_key_checking = false
  end

  config.vm.define "poc" do |poc|
    poc.vm.hostname = "poc"
    poc.vm.network "private_network", ip: "192.168.10.2"
    poc.vm.network "forwarded_port", guest: 8080, host: 8082
    poc.vm.network "forwarded_port", guest: 22, host: 2202, id: "ssh"
    poc.vm.provider "virtualbox" do |v|
       v.customize  ["modifyvm", :id,
          "--cpus", "1",
          "--memory", "1024",
          "--name", "poc",
       ]
    end
    poc.vm.provision "ansible" do |ansible|
      ansible.playbook = "provisioning/poc/site.yml"
      ansible.groups = { "servers" => ["poc"] }
      ansible.host_key_checking = false
    end
  end
  
    config.vm.define "cr" do |cr|
    cr.vm.hostname = "cr"
    cr.vm.network "private_network", ip: "192.168.10.3"
    cr.vm.network "forwarded_port", guest: 8080, host: 8083
    cr.vm.network "forwarded_port", guest: 22, host: 2203, id: "ssh"
    cr.vm.provider "virtualbox" do |v|
       v.customize  ["modifyvm", :id,
          "--cpus", "1",
          "--memory", "1024",
          "--name", "cr",
       ]
    end
    cr.vm.provision "ansible" do |ansible|
      ansible.playbook = "provisioning/cr/site.yml"
      ansible.groups = { "servers" => ["cr"] }
      ansible.host_key_checking = false
    end
  end
  
    config.vm.define "iol" do |iol|
    iol.vm.hostname = "iol"
    iol.vm.network "private_network", ip: "192.168.10.4"
    iol.vm.network "forwarded_port", guest: 8089, host: 8084
    iol.vm.network "forwarded_port", guest: 22, host: 2204, id: "ssh"
    iol.vm.provider "virtualbox" do |v|
       v.customize  ["modifyvm", :id,
          "--cpus", "1",
          "--memory", "1024",
          "--name", "iol",
       ]
    end
    config.vm.provision "ansible" do |ansible|
      ansible.playbook = "provisioning/iol/site.yml"
      ansible.groups = { "servers" => ["iol"] }
      ansible.host_key_checking = false
    end
  end
  
    config.vm.define "shr" do |shr|
    shr.vm.hostname = "shr"
    shr.vm.network "private_network", ip: "192.168.10.5"
    shr.vm.network "forwarded_port", guest: 8080, host: 8085
    shr.vm.network "forwarded_port", guest: 22, host: 2205, id: "ssh"
    shr.vm.provider "virtualbox" do |v|
       v.customize  ["modifyvm", :id,
          "--cpus", "1",
          "--memory", "1024",
          "--name", "shr",
       ]
    end
    shr.vm.provision "ansible" do |ansible|
      ansible.playbook = "provisioning/shr/site.yml"
      ansible.groups = { "servers" => ["shr"] }
      ansible.host_key_checking = false
    end
  end
  
    config.vm.define "ts" do |ts|
    ts.vm.hostname = "ts"
    ts.vm.network "private_network", ip: "192.168.10.6"
    ts.vm.network "forwarded_port", guest: 80, host: 8086
    ts.vm.network "forwarded_port", guest: 22, host: 2206, id: "ssh"
    ts.vm.provider "virtualbox" do |v|
       v.customize  ["modifyvm", :id,
          "--cpus", "1",
          "--memory", "1024",
          "--name", "ts",
       ]
    end
    ts.vm.provision "ansible" do |ansible|
      ansible.playbook = "provisioning/ts/site.yml"
      ansible.groups = { "servers" => ["ts"] }
      ansible.host_key_checking = false
    end
  end
  
    config.vm.define "pr" do |pr|
    pr.vm.hostname = "pr"
    pr.vm.network "private_network", ip: "192.168.10.7"
    pr.vm.network "forwarded_port", guest: 80, host: 8087
    pr.vm.network "forwarded_port", guest: 22, host: 2207, id: "ssh"
    pr.vm.provider "virtualbox" do |v|
       v.customize  ["modifyvm", :id,
          "--cpus", "1",
          "--memory", "1024",
          "--name", "pr",
       ]
    end
    pr.vm.provision "ansible" do |ansible|
      ansible.playbook = "provisioning/pr/site.yml"
      ansible.groups = { "servers" => ["pr"] }
      ansible.host_key_checking = false
    end
  end
  
    config.vm.define "fr" do |fr|
    fr.vm.hostname = "fr"
    fr.vm.network "private_network", ip: "192.168.10.8"
    fr.vm.network "forwarded_port", guest: 80, host: 8088
    fr.vm.network "forwarded_port", guest: 22, host: 2208, id: "ssh"
    fr.vm.provider "virtualbox" do |v|
       v.customize  ["modifyvm", :id,
          "--cpus", "1",
          "--memory", "1024",
          "--name", "fr",
       ]
    end
    fr.vm.provision "ansible" do |ansible|
      ansible.playbook = "provisioning/fr/site.yml"
      ansible.groups = { "servers" => ["fr"] }
      ansible.host_key_checking = false
    end
  end



end
