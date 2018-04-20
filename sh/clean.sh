#!/bin/bash
echo "clearing all logs from chaindata to re init geth with reloaded accounts"

rm ../geth/chaindata/*
rm ../geth/lightchaindata/*

echo "clean has been completed"