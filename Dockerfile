FROM ubuntu:18.10

# OS PACKAGE INSTALLATIONS
RUN apt-get update
RUN apt-get install -y wget

# DOWNLOAD & INSTALL MULTICHAIN
RUN mkdir /multichain_download
WORKDIR /multichain_download
RUN wget https://www.multichain.com/download/multichain-1.0.6.tar.gz
RUN tar -xvzf multichain-1.0.6.tar.gz
WORKDIR /multichain_download/multichain-1.0.6
RUN mv multichaind multichain-cli multichain-util /usr/local/bin

# COPY SCRIPT THAT CREATES, PRINTS CONFIGURATION & INITIALIZES A CHAIN INSTANCE
ADD ./scripts/ /multichain_launch_scripts/
RUN chmod +x /multichain_launch_scripts/create_chain.sh
RUN chmod +x /multichain_launch_scripts/join_chain.sh

# CMD ["/multichain_launch_scripts/create_chain.sh"]
# CMD ["/multichain_launch_scripts/join_chain.sh"]