#!/bin/bash

# CREATE CHAIN WITH SPECIFIC CONFIG
multichain-util create $chain_name \
	-default-network-port=$default_network_port \
	-default-rpc-port=$default_rpc_port 

# PRINT CHAIN PARAMETERS
cat ~/.multichain/$chain_name/params.dat

# INITIALIZE CHAIN
multichaind $chain_name