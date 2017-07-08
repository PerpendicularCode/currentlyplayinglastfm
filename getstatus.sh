#!/bin/bash

## See https://github.com/wordswords/currentlyplayinglastfm for more information.

old=""
while true; do
	response=`curl -s "http://ws.audioscrobbler.com/2.0/?method=user.getrecenttracks&user=$LASTFM_USER&api_key=$LASTFM_API_KEY&format=json"` 
	artist=`echo "$response" | jq ".[] | .track | .[0] | .artist " | tr -d "\#" | jq ".text"`
	track=`echo "$response" | jq ".[] | .track | .[0] | .name"`
	album=`echo "$response" | jq ".[] | .track | .[0] | .album " | tr -d "\#" | jq ".text"`
	new="--> $artist : $track ( $album )"
	if [ "$old" != "$new" ]
		then
		  echo "$new"
		  old="$new"
		fi
	sleep 3; 
done
