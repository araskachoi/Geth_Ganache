# Geth_Ganache
This is a basic set up of Geth to create 10 accounts preloaded with 100 ETH to use for whatever your wish desires (withib your private network of course)

# Dependencies
Geth Version: 1.8.3-unstable
**You must first have Geth. If you do not yet, you can download it [here](https://github.com/ethereum/go-ethereum/wiki/Building-Ethereum).**

## Getting Started
- you must clone this repo
- open up a terminal
- cd into /path/to/directory/sh/
- run the script ./start.sh
- follow the instructions in the command line
- [more info here](https://github.com/araskachoi/Geth_Ganache/tree/master/sh/README.md)

## What this project does (in a nutshell)
- initiate Geth using network id: 555555 (can change this is the Genesis.json file)
- starts geth with 10 accounts that are all preloaded with 100 ETH
- all accounts are pre-unlocked upon starting geth (important if you wish to have them run transactions)

## What you can do with it (basic)
- This project was to emulate [Truffle's Ganache](http://truffleframework.com/docs/ganache/using) but in the Geth environment 
- You can essentially do what Ganache can do using this (without the nice gooey)
- connect a Truffle project to deploy a smart contract and interact with the 10 pre-loaded accounts
- run web3.js functions using these accounts

## Addresses of the 10 Accounts that are initiated
1. 0x9d840872DDef20df865FAdD87E71a04DffDC7c0C
2. 0xcdd3516d2013251e098caf1200e0823c673513cc
3. 0x54fc0e31e83859db240b97b54918de6f8b414596
4. 0x9d365d8674a383736f1a1d7a43c4b63c213b3394
5. 0x9fb3b9cc6aa3c3048cee06570e597c84c1524f78
6. 0xae0b887297cc0d4805c4ba006552b29d2167b8c6
7. 0xa333caee867ee2db24a8e3279d7c6f5fea5e9469
8. 0x5807cce65cb1b3ef8783cd0256687b014d1f46e8
9. 0x4b40809b60e1b6e501d9abf4bb8043f10766119a
10. 0xa7b95b4bde4d10c445176d18f1bcd40f18b289e5

**can be changed by editing the files in the [keystore](https://github.com/araskachoi/Geth_Ganache/tree/master/keystore) directory**

## Some somewhat important functions (inside geth console)
```
miner.start()
```
- this will only start mining for the primary account (0x9d840872DDef20df865FAdD87E71a04DffDC7c0C)

```
web3.fromWei(eth.getBalance("0x9d840872DDef20df865FAdD87E71a04DffDC7c0C"), "ether")
```
- this will show the account's balance in ETH (change the account address if you wish to see another account's balance)
```
personal.listWallets
```
- this will list all accounts, show their addresses, url, and status (LOCKED/UNLOCKED)
```
personal.sendTransaction({from:'0x9d840872DDef20df865FAdD87E71a04DffDC7c0C',to:'0xcdd3516d2013251e098caf1200e0823c673513cc', value: 1000000000000000000},"password")
```
- this will send 1 ETH from account 'from' to account 'to'
- this will only execute if you have miner.start() 

**The full list of commands that can be run on the geth console can be found [here](https://github.com/ethereum/go-ethereum/wiki/Command-Line-Options)**