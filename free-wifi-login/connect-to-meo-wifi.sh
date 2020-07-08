# try to login using nmcli ( ubuntu )

#Making sure that wifi is on
nmcli radio wifi on
 # wait for the network to be ready
sleep 10
# Connecting to MEO-Wifi
if nmcli device wifi connect MEO-WiFi >/dev/null; then
   
    echo "Connected successfully!"
    echo "Trying authentication"
    if sh meo-wifi-login.sh >/dev/null; then
        echo "Successful authentication"
        echo -ne '\007'

    else 
        echo "Authentication failed"
        echo -ne '\007'
        echo -ne '\007'
        echo -ne '\007'
        echo -ne '\007'
        echo -ne '\007'
    fi
else
    echo "Not able to connect to MEO-WiFi. Maybe the network is out of reach"
fi
