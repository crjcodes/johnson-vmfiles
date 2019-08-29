#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install -y ansible
cp provision/inventories/dev /etc/ansible/hosts -f
#chmod 666 /etc/ansible/hosts
#cat /vagrant/ansible/files/authorized_keys >> /home/vagrant/.ssh/authorized_keys
sudo ansible-playbook provision/provision.yml --connection=local