install-linux:
	sudo ansible-galaxy install -r linux_requirements.yml
	ansible-playbook setup_linux_env.yml
