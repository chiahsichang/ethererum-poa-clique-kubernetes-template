#!/bin/bash

# 取得第一個參數作為交易哈希
txhash=$1

# 取得第二個參數作為主機地址
host=$2

# 取得第三個參數作為端口號
port=$3

# 發送請求
curl -X POST --data "{\"jsonrpc\":\"2.0\",\"method\":\"eth_getTransactionByHash\",\"params\":[\"$txhash\"],\"id\":1}" -H "Content-Type: application/json" http://$host:$port
