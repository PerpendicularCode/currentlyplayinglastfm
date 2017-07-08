curl -s "http://ws.audioscrobbler.com/2.0/?method=user.getrecenttracks&user=davmonster&api_key=$LASTFM_API_KEY&format=json" | jq ".[] | .track | .[0] | .artist " | tr -d "\#" | jq ".text"
