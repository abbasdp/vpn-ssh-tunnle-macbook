#!/bin/bash

# Copyright Abbas Davarpanah <z.abbas.130@gmail.com>
#https://github.com/abbasdp/vpn-ssh-tunnle-macbook

starts () {
read -p "Enter UserName Server : " server_us 
read -p "Enter Server IP Address : " server_ip 
read -p "Enter Server Port : " server_port
read -p "Enter Server Port Forwarding : " port_forward

echo " Server is Roning : "
sleep 1
echo " please run and set ./Proxis.sh" 
sleep 2
ssh -N -p $server_port -D $port_forward $server_us@$server_ip -L 127.0.0.1:$port_forward::$port_forward
}
first () {
tput bold
echo "Internet Port Forwarding For MacBook [woman,Life,freedom] "
tput sgr0
starts
}
first
