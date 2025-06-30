#! /bin/bash

limactl shell jumpbox -- bash -c "
    # Create .ssh directory
    mkdir -p ~/.ssh
    chmod 700 ~/.ssh
    
    # Generate SSH key if not exists
    if [[ ! -f ~/.ssh/id_ed25519 ]]; then
        ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519 -N '' -C 'devonboyer@jumpbox'
    fi
"

JUMPBOX_PUBKEY=$(limactl shell jumpbox -- bash -c "cat ~/.ssh/id_ed25519.pub")

for vm in server node-0 node-1; do
    limactl shell "${vm}" -- bash -c "
        mkdir -p ~/.ssh
        chmod 700 ~/.ssh
        echo '${JUMPBOX_PUBKEY}' >> ~/.ssh/authorized_keys
        chmod 600 ~/.ssh/authorized_keys
    "
done
