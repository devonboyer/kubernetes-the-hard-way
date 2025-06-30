#! /bin/bash

limactl shell jumpbox sudo tee -a /etc/hosts << EOF
192.168.105.3 server
192.168.105.4 node-0
192.168.105.5 node-1
EOF
