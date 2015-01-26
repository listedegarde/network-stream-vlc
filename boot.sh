red='\033[0;31m'
NC='\033[0m'
if etherwake -u > /dev/null 2>&1; then
  if ping -c 1 192.168.0.10 > /dev/null 2>&1; then
    if ping -c 1 192.168.0.4 > /dev/null 2>&1; then
      etherwake 00:0a:60:5b:3a:74 &&
      etherwake namedmac;
    else
      echo -e "${red}*** WARNING - DHCP Server not running! ***${NC}";
    fi
  else
    echo -e "${red}*** WARNING - Server not running! ***${NC}";
  fi
else
  echo -e "${red}*** WARNING - Etherwake not installed! ***${NC}"
  echo -e "${red}You can install it by typing 'apt-get install etherwake'.${NC}";
fi
