
# Step 1 - Setup-up Ansible

# ![Ref](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#prerequisites)

sudo apt update

sudo apt install software-properties-common

sudo apt-add-repository --yes --update ppa:ansible/ansible

sudo apt install ansible


# Step 2 - Update following files

## Update

# Step 3 - Run Ansible playbook check
sudo ansible-playbook main.yml -i inventory -kK --check

SSH password: = k
BECOME password = -K