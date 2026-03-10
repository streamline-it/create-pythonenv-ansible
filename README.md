Role Name
=========

create-pythonenv-ansible

Creates a python environment, then installs specific versions of Ansible


Requirements
------------

Runs on RHEL version 7 - 9
FreeBSD version 13 - 15

Role Variables
--------------

# Defaults section

# List versions for example:
# create_pythonenv_ansible_versions:
#   - version: 7.7.0
#   - version: 8.0.0
create_pythonenv_ansible_versions:
  - version:

# The directory the python enviroment directory will
# exist under.  This is placed under the path
# specified in the "create_pythonenv_ansible_user_home_directory"
create_pythonenv_ansible_parent_directory: 

# username
create_pythonenv_ansible_user:

create_pythonenv_ansible_user_home_directory:

# vars section
RedHat.yml:
create_pythonenv_ansible_script_name: pythonenv-install-ansible-rhel.sh

FreeBSD.yml:

create_pythonenv_ansible_script_name: pythonenv-install-ansible-fbsd.sh

Dependencies
------------

None

Example Playbook
----------------

- hosts: node5.example.com
  
  vars:

    create_pythonenv_ansible_versions:
      - version: 7.7.0
      - version: 8.0.0

    create_pythonenv_ansible_parent_directory: pythonenv

    create_pythonenv_ansible_user: user: rich

    create_pythonenv_ansible_user_home_directory: /home/rich

  roles:

    - name: create-pythonenv-ansible

License
-------

BSD

Author Information
------------------

Rich O'Hara
