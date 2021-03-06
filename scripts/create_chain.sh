#!/bin/bash

# CREATE CHAIN WITH SPECIFIC CONFIG
multichain-util create $chain_name \
	-default-network-port=$default_network_port \
	-default-rpc-port=$default_rpc_port 

# UPDATE CONFIG
sed -i "s/^anyone-can-connect.*/anyone-can-connect = true/" /root/.multichain/$chain_name/params.dat

# UPDATE NODE CONFIG
cat << EOF > /root/.multichain/$chain_name/multichain.conf
rpcuser=$RPC_USER
rpcpassword=$RPC_PASSWORD
EOF

# PRINT CHAIN PARAMETERS
cat ~/.multichain/$chain_name/params.dat

# INITIALIZE CHAIN
multichaind $chain_name \
	-rpcallowip=0.0.0.0/0