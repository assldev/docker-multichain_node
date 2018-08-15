# Multichain configurations

## Framework provided
* [Complete list](https://www.multichain.com/developers/blockchain-parameters/) - The web framework used
* These can be configured in the following location (when the blockchain has been created, but genesis block has not been mined yet)
```
~/.multichain/<chain_name>/params.dat
```

## Supported by this Dockerfile

### Multichain level
* chain_name - Environment variable to set name of the blockchain
* default_network_port - 
* default_rpc_port - 
TBD

### Node level
* RPC_USER - 
* RPC_PASSWORD - 
TBD

# Container configurations
TBD

# Running the network
```
Refer docker-compose.yml for a 2-node multichain network (1 has admin privilleges, the other has only connect privillege).
```
