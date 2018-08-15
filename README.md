# Multichain configurations

## Framework provided
* [Complete list of available configurations](https://www.multichain.com/developers/blockchain-parameters/)
* These can be configured in the following location (when the blockchain has been created, but genesis block has not been mined yet):
```
~/.multichain/<chain_name>/params.dat
```

## Supported by this Dockerfile (Environment Variables)

### Multichain level
* `chain_name` - Name of the blockchain instance, set for each node.
* `default_network_port` - Default port number for each peer in the network for P2P interaction, set for first/admin node.
* `default_rpc_port` - Default port number for each peer in the network to receive commands over RPC, set for first/admin node.

### Node level
* `RPC_USER` - Username for RPC connection, set for each node.
* `RPC_PASSWORD` - Password for RPC connection, set for each node.

# Container configurations
* VOLUMES - The state of the blockchain can be persisted (if needed), by mounting the following volume to a folder on the host:
```
/root/.multichain
```
* NETWORK PORT (for P2P interaction) - If you wish to make it a public blockchain, you can expose the `default-network-port`. If trying to host both containers on the same host machine, you'll have to map the default-network-port to another host port for avoiding port conflicts.
* RPC PORT (for executing commands on blockchain) - This port should be kept public in most cases. However if you're building a smart-contracts loayer on top of the blockchain, then this could be kept private to the network of these two containers (node & smart-contract).
* NETWORKS - You can leverage docker simulated networks to create a sandboxed/private virtual network if playing on the same host machine. With this, you won't even need to track different (network) port numbers for each container.
* Environment variables `admin_ip` & `admin_port` - Socket information of other nodes (generally the first) is necessary for all nodes (except the first one) so they can connect (to form the P2p nework).

# Running the network
```
Refer docker-compose.yml for a 2-node multichain network (1 has admin privilleges, the other has only connect privillege).
```
