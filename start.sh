#!/bin/bash
echo "Docker Kodcoin wallet

By: Jos Hendriks
GitHub: https://github.com/joshendriks/
Docker: https://hub.docker.com/r/joshendriks/ 

BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk
KD: RDScEeb6HYgcTTRELJUQ967PMsAHdJQKjY"

config="/config/Kodcoin.conf"
if [ -f "$config" ]
then
    echo "Using $config"
    cp $config /data/.Kodcoin/Kodcoin.conf
fi

wallet="/config/wallet.dat"
if [ -f "$wallet" ]
then
    echo "Using $wallet"
    cp $wallet /data/.Kodcoin/wallet.dat
fi

echo "Starting KD daemon..."
Kodcoind