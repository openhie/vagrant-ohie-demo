vagrant-ohie-demo
=================

This allows you to create your own OpenHIE demo VMs. Using this you can deploy a component contained within its own vm or deploy the whole stack all at once.
## Requirements
* Linux/OS X
* 8+ GB of RAM to run the full stack
* [Vagrant](http://www.vagrantup.com/downloads.html) installed
* [Ansible](http://docs.ansible.com/intro_installation.html#installing-the-control-machine) installed
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads) installed

## Install Instructions
1. Clone this repo and enter the directory.
2. Run the `grab-playbooks.sh` script.
3. Edit the files in the provisioning directory to fit your environment.
4. Run `vagrant up` to launch the whole OpenHIE stack of VMs. To run a specific component (e.g. poc) run `vagrant up poc`.

## TODO
* Implement git submodules instead of script
* allow variable for adding demo data
* automate post install configuration
