if etherwake -u > /dev/null 2>&1; then
  if ping -c 1 192.168.0.10 > /dev/null 2>&1; then
    if ping -c 1 192.168.0.4 > /dev/null 2>&1; then
      etherwake 00:0a:60:5b:3a:74 &&
      etherwake namedmac;
    else
      echo "*** WARNING - DHCP Server not running! ***";
    fi
  else
    echo "*** WARNING - Server not running! ***";
  fi
else
  echo "*** WARNING - Etherwake not installed! ***"
  echo "You can install it by typing 'apt-get install etherwake'.";
fi
