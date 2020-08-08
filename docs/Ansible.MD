
# Step 1 - Setup-up Ansible

# ![Ref](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#prerequisites)

sudo apt update

sudo apt install software-properties-common

sudo apt-add-repository --yes --update ppa:ansible/ansible

sudo apt install ansible


# Step 2 - Update following files

## Update

# Step 3 - Run Ansible playbook check

## Set ANSIBLE_CONFIG - Navigate to ansible folder and run below command
export ANSIBLE_CONFIG=ansible.cfg

### Unset ANSIBLE_CONFIG
unset ANSIBLE_CONFIG

### Check ansible config - As long as your ansible/invetory/hosts.yml is maintained below should work
sudo ansible-playbook ansible/main.yml --check



### To input password you can use below command

sudo ansible-playbook main.yml -kK --check

SSH password: = k
BECOME password = -K