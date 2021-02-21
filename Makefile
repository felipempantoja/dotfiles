.DEFAULT_GOAL := install

install:
	@if test -f ~/ansible-local-vars.yml; then \
		echo '*** Start provisioning your local workstation ***'; \
		ansible-playbook ~/ansible/playbook.yml --ask-become-pass; \
	else \
		echo 'Error: ~/ansible-local-vars.yml file not found. Please create it based on the ~/ansible/ansible-local-vars.example.yml file'; \
	fi
