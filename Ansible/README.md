### ANSIBLE
Anible is a very powerful open source automation tool. It come in the catagory of Configuration Management tools like Puppet, Chef, Saltstack etc

## Install 
```
sudo apt-get update
sudo apt-get install ansible

```
## Defind the host and inventory
```
web1 ansible_ssh_host=192.168.1.13
ansible_ssh_user=vagrant ansible_ssh_pass='vagrant'
db1 ansible_ssh_host=192.168.1.14
ansible_ssh_user=vagrant ansible_ssh_pass='vagrant'
[webservers] web1 [dbservers] db1
```
## Keygen to get access with no PWD
- keygen in Ansible server and target server
- copy public key in Ansible server to authen key in target server so that we can ssh to target server without PWD
## Ansible Adhoc Commands
``` 
ansible -i inventory all -m "shell" -a "touch test"
# inventory is file which defind host and ip
# shell is ansible module
```