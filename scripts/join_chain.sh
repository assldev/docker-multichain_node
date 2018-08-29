#!/bin/bash

# CONNECT TO BLOCKCHAIN & START (MULTICHAIN) DAEMON
multichaind $chain_name@$admin_ip:$admin_port \
	-rpcuser=$RPC_USER \
	-rpcpassword=$RPC_PASSWORD \
	-rpcallowip=0.0.0.0/0

# UPDATE NODE CONFIG
cat << EOF > ~/.multichain/$chain_name/multichain.conf
rpcuser=$RPC_USER
rpcpassword=$RPC_PASSWORD
EOF