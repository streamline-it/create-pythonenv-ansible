# create-pythonenv-ansible
Creates a python environment, then installs specific versions of Ansible

# Defaults section

# List versions for example:
# create_pythonenv_ansible_versions:
#   - version: 7.7.0
#   - version: 8.0.0
create_pythonenv_ansible_versions:
  - version:

create_pythonenv_ansible_parent_directory: 

create_pythonenv_ansible_user:

create_pythonenv_ansible_user_home_directory:

# vars section
RedHat.yml:
create_pythonenv_ansible_script_name: pythonenv-install-ansible-rhel.sh

FreeBSD.yml:

create_pythonenv_ansible_script_name: pythonenv-install-ansible-fbsd.sh
