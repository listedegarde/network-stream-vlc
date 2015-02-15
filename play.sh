#!/dev/null
ssh user@192.168.0.10 "
  pkill vlc
  sh ~/.local/share/nautilus/scripts/stream.sh $1
"
