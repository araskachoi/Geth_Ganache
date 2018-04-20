#!/bin/bash

echo "starting geth!"

echo "would you like to clean are re-init geth to reload the accounts? (YES/no)"
read answer

if [ "$answer" = "YES" ]
then
    echo "you have chosen": $answer "to re-init geth"
    echo "YESSSSSSSSSSS"
    /bin/bash ./clean.sh
    geth --datadir ../ init ../Genesis.json
    geth --rpc --datadir ../ --networkid 555555 --unlock "0x9d840872ddef20df865fadd87e71a04dffdc7c0c,0xcdd3516d2013251e098caf1200e0823c673513cc,0x54fc0e31e83859db240b97b54918de6f8b414596,0x9d365d8674a383736f1a1d7a43c4b63c213b3394,0x9fb3b9cc6aa3c3048cee06570e597c84c1524f78,0xae0b887297cc0d4805c4ba006552b29d2167b8c6,0xa333caee867ee2db24a8e3279d7c6f5fea5e9469,0x5807cce65cb1b3ef8783cd0256687b014d1f46e8,0x4b40809b60e1b6e501d9abf4bb8043f10766119a,0xa7b95b4bde4d10c445176d18f1bcd40f18b289e5" --password ../keystore/password.txt console
elif [ "$answer" = "no" ]
then
    echo "you have chosen": $answer "to re-init geth"
    echo "NOOOOOOOOOOOO"
    geth --rpc --datadir ../ --networkid 555555 --unlock "0x9d840872ddef20df865fadd87e71a04dffdc7c0c,0xcdd3516d2013251e098caf1200e0823c673513cc,0x54fc0e31e83859db240b97b54918de6f8b414596,0x9d365d8674a383736f1a1d7a43c4b63c213b3394,0x9fb3b9cc6aa3c3048cee06570e597c84c1524f78,0xae0b887297cc0d4805c4ba006552b29d2167b8c6,0xa333caee867ee2db24a8e3279d7c6f5fea5e9469,0x5807cce65cb1b3ef8783cd0256687b014d1f46e8,0x4b40809b60e1b6e501d9abf4bb8043f10766119a,0xa7b95b4bde4d10c445176d18f1bcd40f18b289e5" --password ../keystore/password.txt console

else
    echo "No answer was given"
    echo "so.... just gunna start geth"
    geth --rpc --datadir ../ --networkid 555555 --unlock "0x9d840872ddef20df865fadd87e71a04dffdc7c0c,0xcdd3516d2013251e098caf1200e0823c673513cc,0x54fc0e31e83859db240b97b54918de6f8b414596,0x9d365d8674a383736f1a1d7a43c4b63c213b3394,0x9fb3b9cc6aa3c3048cee06570e597c84c1524f78,0xae0b887297cc0d4805c4ba006552b29d2167b8c6,0xa333caee867ee2db24a8e3279d7c6f5fea5e9469,0x5807cce65cb1b3ef8783cd0256687b014d1f46e8,0x4b40809b60e1b6e501d9abf4bb8043f10766119a,0xa7b95b4bde4d10c445176d18f1bcd40f18b289e5" --password ../keystore/password.txt console
fi


