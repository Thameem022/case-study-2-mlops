#!/bin/bash

# Variables
REMOTE_HOST="paffenroth-23.dyn.wpi.edu"
REMOTE_PORT=22008
REMOTE_USER="student-admin"
SSH_KEY="student-admin_key"
PUB_KEY="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIB4AKhI03Vyn/mb+53HgZktUkFJcd61cM4/Om0qDEXwb thameem022@gmail.com"

# Always overwrite authorized_keys with only this key
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null \
    -i "$SSH_KEY" \
    -p "$REMOTE_PORT" \
    "$REMOTE_USER@$REMOTE_HOST" \
    "mkdir -p ~/.ssh && chmod 700 ~/.ssh && \
     echo '$PUB_KEY' > ~/.ssh/authorized_keys && \
     chmod 600 ~/.ssh/authorized_keys"

