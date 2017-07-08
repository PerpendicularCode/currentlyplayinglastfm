export old=""
while true; do
export new="Currently playing: `./getartist.sh` : `./gettrack.sh`"
if [ "$old" != "$new" ]
then
  echo "$new"
  export old="$new"
fi
sleep 3; 
done
