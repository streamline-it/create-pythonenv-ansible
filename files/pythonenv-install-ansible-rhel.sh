!/bin/bash
# **************************************************************************************
#
#
# This will install a python environment using the argument passed to it "ANSIBLE_VERSION"
# It will use that variable to install the version of ansible in that python environment.
#
#
# **************************************************************************************

ANSIBLE_VERSION="$1"
ANSIBLE_PARENT_DIRECTORY="$2"
ANSIBLE_ENV_DIRECTORY="pythonenv-ansible-v$ANSIBLE_VERSION-env"

# create python environment if it doesn't already exist

echo "Checking to see if the environment exists..."
echo

cd "$ANSIBLE_PARENT_DIRECTORY"


if [ ! -d $ANSIBLE_ENV_DIRECTORY ]; then
	echo "Environment doesn't exist, creating now...."
	echo "==========================================="
	echo 
	python -m venv $ANSIBLE_ENV_DIRECTORY
else
	echo "Environment already exists. Nothing created/installed"
	exit 1
fi

echo "Attempting to enter python environment...."

source $ANSIBLE_ENV_DIRECTORY/bin/activate

# if prior activate command worked, install ansible
if [ $? == 0 ]; then
	echo "Entered environment, update pip install, then install ansible...."
	echo "==========================================="
	echo 
	pip install --upgrade pip
	pip install "ansible==$ANSIBLE_VERSION"
	deactivate
	echo "==========================================="
	echo 
	echo "Python environment installed"
	echo "Ansible version $ANSIBLE_VERSION installed"
else
	echo "Failure to enter python environment, nothing installed".
	exit 2
fi
