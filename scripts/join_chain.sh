#!/bin/bash

# CONNECT TO BLOCKCHAIN
multichaind $chain_name@$admin_ip:$admin_port

# START MULTICHAIN DAEMON
multichaind $chain_name