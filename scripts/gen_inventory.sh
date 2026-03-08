#!/bin/bash
IP=${terraform chdir=terraform output -raw public_ip}

cat > ansible/inventory.ini << EOF
[web]
web ansible_host=${IP}

[web:vars]
ansible_user=ubuntu
ansible_ssh_private_key_file=~/.ssh/t-key
EOF
