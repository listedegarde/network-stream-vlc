if etherwake -u; then
  if ping -c 2 192.168.1.10; then
    if ping -c 2 192.168.1.4; then
      etherwake 00:0d:60:4c:3a:90 &&
      etherwake 00:0a:e4:5b:7b:74;
    else
      echo "*** WARNING - Virtual Server not running! ***";
    fi
  else
    echo "*** WARNING - Host Computer not running! ***";
  fi
  etherwake 00:1c:c0:20:2b:00;
else
  echo "*** WARNING - Etherwake not installed! ***"
  echo "You can install it by typing 'apt-get install etherwake'.";
fi
