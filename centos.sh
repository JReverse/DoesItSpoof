#!/bin/bash
echo "Started"
yum -y install gcc gcc-c++ make byacc wget flex bison
yum install libpcap libpcap-devel -y
yum install openssl-devel.x86_64 -y
sleep 1
yum -y groupinstall "Development tools"
sleep 1
wget https://github.com/google/protobuf/releases/download/v2.5.0/protobuf-2.5.0.tar.gz
tar -xzvf protobuf-2.5.0.tar.gz
cd protobuf-2.5.0
./configure
make
make install
cd ..
sleep 1
wget http://www.tcpdump.org/release/tcpdump-4.9.3.tar.gz
tar -zxvf tcpdump-4.9.3.tar.gz
cd tcpdump-4.9.3
./configure
make 
make install
cd ..
sleep 1
wget https://www.caida.org/projects/spoofer/downloads/spoofer-1.4.5.tar.gz
tar -xzvf spoofer-1.4.5.tar.gz
cd spoofer-1.4.5
./configure
make 
make install
echo "DONE!"