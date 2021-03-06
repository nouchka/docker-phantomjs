#!/bin/bash

sites=( $SITES )
ids=( $IDS )

for i in "${!ids[@]}"
do
	ID=${ids[$i]}
	URL=${sites[$i]}
	TIME=`/usr/local/bin/phantomjs --ssl-protocol=any /usr/local/share/loadspeed.js $URL|tail -n1|sed 's/[^0-9]//g'`
	echo $ID $TIME
done
