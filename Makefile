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
	./install_anaconda.sh

install-requirements: install-anaconda
	pip install ansible
	ansible-galaxy collection install community.general

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
	ansible-playbook -c local -i localhost -e user=$$(whoami), setup_mac.yml

# these do the whole shebang
install-linux: install-requirements setup-linux-ansible
install-mac: install-requirements setup-mac-ansible
