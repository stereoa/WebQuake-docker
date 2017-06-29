FROM ubuntu:16.04

# Get dependencies
RUN apt-get update && apt-get install -y \
  build-essential \
  cmake \
  graphviz \
  git \
  gcc-4.8 \ 
  gcc-4.8-multilib \  
  nodejs 

# WebQuake
WORKDIR "/root"
RUN git clone https://github.com/Triang3l/WebQuake

WORKDIR "/root/WebQuake"
RUN npm install websocket


WORKDIR "/root/WebQuake/Server"
RUN "node WebQDS.js"

WORKDIR "/root"
CMD ["/bin/bash"]
