if ping -q -c 1 -W 1 www.abola.pt >/dev/null; then
  echo "IPv4 is up. script will exit"
  exit
else
  echo "IPv4 is down"
  echo "Checking current network name"
  if iwgetid -r | grep '*MEO*' > /dev/null; then
    echo "MEO-WIFI is already connected"
  else 
    echo "Trying to connect to meo-wifi"
    sh connect-to-meo-wifi.sh
  fi
fi