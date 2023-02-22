#!/bin/bash
networkkill () {
    networksetup -setsocksfirewallproxystate "Wi-Fi" off 2> /dev/null
    echo
    
    echo "      your Proxy has bin Disabled . "
    sleep 1
    exit
}

networkstat () {
    read -p "Enter Port Forwarding : " portf
    networksetup -setsocksfirewallproxy "Wi-Fi" localhost $portf
    sleep 1
    echo "your Proxy Activate .."
    sleep 1
}

starts () {
    tput bold
    echo "Internet Port Forwarding For MacBook [woman,Life,freedom] "
    tput sgr0
    echo "Do you Want To Enable/Disable The Proxy?"
    read -p "Enter 'enable' or 'disable': " acdis
    if [[ $acdis = 'enable' ]];
    then
        networkstat
    elif [[ $acdis = 'disable' ]];
    then
        networkkill
    
    else
        starts
    fi
}
starts