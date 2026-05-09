#!/bin/bash
dnf install ansible -y
cd /tmp
git clone https://github.com/Lingaiahthammisetti/4.9.expense-ansible-tags.git
cd 4.9.expense-ansible-tags
ansible-playbook main.yaml -e component=db
ansible-playbook main.yaml -e component=db #Run twice db.yaml
ansible-playbook main.yaml -e component=backend
ansible-playbook main.yaml -e component=frontend

#We will run specific tags using ansible tags
ansible-playbook main.yaml -e component=backend -t deployment