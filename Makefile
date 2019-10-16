setup:
	pip install -U ansible
	pip install -U python3-apt

install-linux: setup
	sudo ansible-galaxy install -r linux_requirements.yml
	ansible-playbook setup_linux_env.yml
