# try to login using nmcli ( ubuntu )

#Making sure that wifi is on
nmcli radio wifi on
# Connecting to MEO-Wifi
if nmcli device wifi connect MEO-WiFi >/dev/null; then
    echo "Connected successfully!"
    echo "Trying authentication"
    sh meo-wifi-login.sh
else
    echo "Not able to connect to MEO-WiFi. Maybe the network is out of reach"
fi
