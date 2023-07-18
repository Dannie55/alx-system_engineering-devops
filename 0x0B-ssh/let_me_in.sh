#!/bin/bash

# Server details
server=100.26.250.128
user="ubuntu"

# SSH public key
ssh_public_key="ssh-rsa

# Connect to the server and add the SSH public key to authorized_keys
ssh ubuntu@100.26.250.128 "mkdir -p ~/.ssh && echo \"$ssh_public_key\" >> ~/.ssh/authorized_keys && chmod 700 ~/.ssh && chmod 600 ~/.ssh/authorized_keys"

echo "SSH public key added to the server for user '$user'."
