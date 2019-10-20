This repository contains examples and best practices for building Ansible Playbooks.

Clone this REPO on your host machine in <someDirectory>.
Run below docker command to spin up ansible container which will map current host's ansible directory into container at /var/workspace.

cd <someDirectory>
docker run -it -v ${PWD}:/var/workspace rajakumargupta/ansible:latest #Dockerfile is in this REPO for reference.
ANS_USER=ansible
ANS_PASSWORD='myRemotePassword'

#Simple run
ansible-playbook task-name.yml -i inventory

#Smart run
ansible-playbook task-name.yml -vv -i hosts.py -e ansible_user="$ANS_USER" -e ansible_ssh_pass="$ANS_PASSWORD"
ansible-playbook task-name.yml -vv -i hosts.py -e ansible_user="ANS_USER" -e ansible_ssh_pass="$ANS_PASSWORD" --ssh-extra-args='-o StrictHostKeyChecking=no'
