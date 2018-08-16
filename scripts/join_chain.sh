#!/bin/bash

# CONNECT TO BLOCKCHAIN
multichaind $chain_name@$admin_ip:$admin_port

# UPDATE NODE CONFIG
cat << EOF > /root/.multichain/$chain_name/multichain.conf
rpcuser=$RPC_USER
rpcpassword=$RPC_PASSWORD
EOF

# START MULTICHAIN DAEMON
multichaind $chain_name \
	-rpcallowip=0.0.0.0/0