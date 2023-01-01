#!/bin/bash
tensorboard --logdir=./logs &
sleep 10

NAME_LIST=$(find ./logs -name *.trace.json.gz)

TB_URL1="http://localhost:6006/data/plugin/profile/data?run="
TB_URL3="/"
TB_URL5="&tag=tensorflow_stats&host="
TB_URL7="&tqx=out:csv;"
for NAME in $NAME_LIST
do
        TB_URL2=$(echo $NAME | cut -d "/" -f 3)
        TB_URL4=$(echo $NAME | cut -d "/" -f 6)
        TB_URL6=$(echo $NAME | cut -d "/" -f 7 | cut -d "." -f 1)
        TB_URL="$TB_URL1$TB_URL2$TB_URL3$TB_URL4$TB_URL5$TB_URL6$TB_URL7"
        FILENAME="./tensorstats/$TB_URL2$TB_URL4.csv"
        curl -o $FILENAME $TB_URL
        sleep 1
done
ps -ef | grep tensorboard | grep -v grep | awk '{print $2}' | xargs kill


# 2

#!/bin/bash
tensorboard --logdir=./logs &
sleep 10

NAME_LIST=$(find ./logs2 -name *.trace.json.gz)

TB_URL1="http://localhost:6006/data/plugin/profile/data?run="
TB_URL3="/"
TB_URL5="&tag=tensorflow_stats&host="
TB_URL7="&tqx=out:csv;"
for NAME in $NAME_LIST
do
        TB_URL2=$(echo $NAME | cut -d "/" -f 3)
        TB_URL4=$(echo $NAME | cut -d "/" -f 6)
        TB_URL6=$(echo $NAME | cut -d "/" -f 7 | cut -d "." -f 1)
        TB_URL="$TB_URL1$TB_URL2$TB_URL3$TB_URL4$TB_URL5$TB_URL6$TB_URL7"
        FILENAME="./tensorstats2/$TB_URL2$TB_URL4.csv"
        curl -o $FILENAME $TB_URL
        sleep 1
done
ps -ef | grep tensorboard | grep -v grep | awk '{print $2}' | xargs kill

# 3

#!/bin/bash
tensorboard --logdir=./logs &
sleep 10

NAME_LIST=$(find ./logs3 -name *.trace.json.gz)

TB_URL1="http://localhost:6006/data/plugin/profile/data?run="
TB_URL3="/"
TB_URL5="&tag=tensorflow_stats&host="
TB_URL7="&tqx=out:csv;"
for NAME in $NAME_LIST
do
        TB_URL2=$(echo $NAME | cut -d "/" -f 3)
        TB_URL4=$(echo $NAME | cut -d "/" -f 6)
        TB_URL6=$(echo $NAME | cut -d "/" -f 7 | cut -d "." -f 1)
        TB_URL="$TB_URL1$TB_URL2$TB_URL3$TB_URL4$TB_URL5$TB_URL6$TB_URL7"
        FILENAME="./tensorstats3/$TB_URL2$TB_URL4.csv"
        curl -o $FILENAME $TB_URL
        sleep 1
done
ps -ef | grep tensorboard | grep -v grep | awk '{print $2}' | xargs kill

# 4

#!/bin/bash
tensorboard --logdir=./logs &
sleep 10

NAME_LIST=$(find ./logs4 -name *.trace.json.gz)

TB_URL1="http://localhost:6006/data/plugin/profile/data?run="
TB_URL3="/"
TB_URL5="&tag=tensorflow_stats&host="
TB_URL7="&tqx=out:csv;"
for NAME in $NAME_LIST
do
        TB_URL2=$(echo $NAME | cut -d "/" -f 3)
        TB_URL4=$(echo $NAME | cut -d "/" -f 6)
        TB_URL6=$(echo $NAME | cut -d "/" -f 7 | cut -d "." -f 1)
        TB_URL="$TB_URL1$TB_URL2$TB_URL3$TB_URL4$TB_URL5$TB_URL6$TB_URL7"
        FILENAME="./tensorstats4/$TB_URL2$TB_URL4.csv"
        curl -o $FILENAME $TB_URL
        sleep 1
done
ps -ef | grep tensorboard | grep -v grep | awk '{print $2}' | xargs kill


# 5

#!/bin/bash
tensorboard --logdir=./logs &
sleep 10

NAME_LIST=$(find ./logs5 -name *.trace.json.gz)

TB_URL1="http://localhost:6006/data/plugin/profile/data?run="
TB_URL3="/"
TB_URL5="&tag=tensorflow_stats&host="
TB_URL7="&tqx=out:csv;"
for NAME in $NAME_LIST
do
        TB_URL2=$(echo $NAME | cut -d "/" -f 3)
        TB_URL4=$(echo $NAME | cut -d "/" -f 6)
        TB_URL6=$(echo $NAME | cut -d "/" -f 7 | cut -d "." -f 1)
        TB_URL="$TB_URL1$TB_URL2$TB_URL3$TB_URL4$TB_URL5$TB_URL6$TB_URL7"
        FILENAME="./tensorstats5/$TB_URL2$TB_URL4.csv"
        curl -o $FILENAME $TB_URL
        sleep 1
done
ps -ef | grep tensorboard | grep -v grep | awk '{print $2}' | xargs kill
