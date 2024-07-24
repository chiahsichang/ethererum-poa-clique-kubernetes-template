#!/bin/bash

# 取得第一個參數作為交易哈希
txhash=$1

# 取得第二個參數作為主機地址
host=$2

# 取得第三個參數作為端口號
port=$3

# 發送請求
curl -X POST --data '{"jsonrpc":"2.0","method":"eth_sendTransaction","params":[{"from":"0xc11ba4c7c24f70e7a581c7daa92eac108099acec","to":null,"gas":"0x52080","gasPrice":"0x0","value":"0x0","data":"0x1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef"}],"id":1}' -H "Content-Type: application/json" http://$host:$port
