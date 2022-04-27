########################################################################
########################################################################
# Setup Prerequisites to run ansible
#
# Namely:
#  - python
#  - ansible package
########################################################################
########################################################################
install-anaconda:
	./install_anaconda.sh mac

install-mamba:
	./install_mamba.sh mac

install-requirements:
	pip install ansible
	ansible-galaxy collection install community.general

setup: install-mamba install-requirements

########################################################################
########################################################################
# Setup for different environemnts
#
# This is for different OSs (server and dev environments)
########################################################################
########################################################################

setup-linux-ansible:
	ansible-galaxy install -r linux_requirements.yml
	ansible-playbook setup_linux_env.yml -i inventory

setup-mac-ansible:
ifdef tag
	ansible-playbook -c local -i localhost -e user=$$(whoami), setup_mac.yml --tag "$(tag)"
else
	ansible-playbook -c local -i localhost -e user=$$(whoami), setup_mac.yml
endif


install-linux: install-requirements setup-linux-ansible
install-mac: install-requirements setup-mac-ansible

# run this on first setup
initial-setup-mac: setup setup-mac-ansible
