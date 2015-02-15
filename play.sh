#!/dev/null
if [ $2 = "exit" ]
then
  ssh user@192.168.0.10 "
    pkill vlc -f
  ";
else
  ssh user@192.168.0.10 "
    pkill vlc
    sh ~/.local/share/nautilus/scripts/stream.sh $1
  ";
fi
