install-linux:
	ansible-galaxy install -r requirements.yml
	ansible-playbook setup_linux_env.yml