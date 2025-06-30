#! /bin/bash

limactl start --name jumpbox jumpbox.yaml --tty=false
limactl start --name server server.yaml --tty=false
limactl start --name node-0 node-0.yaml --tty=false
limactl start --name node-1 node-1.yaml --tty=false
