#!/bin/bash

# 取得第二個參數作為主機地址
host=$1

# 取得第三個參數作為端口號
port=$2

curl -H "Content-Type: application/json" -X POST --data '{"jsonrpc":"2.0","method":"net_peerCount","params":[],"id":74}' http://$host:$port
