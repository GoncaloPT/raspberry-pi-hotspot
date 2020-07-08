# Free wifi login notes

## MEO WIFI

### Login
Login is done in a login page. 
Emulating the request should be enough to negociate 

### Required software
sudo apt-get install jq -y

#### CURL

meo-wifi-login.sh contains the command


  #### Application
  The application will enforce the login workflow.
  WorkFlow:
  - check-connectivity.sh
    - Enables wifi adapter ( if needed )
    - Tries to find a network named *MEO*
    - executes *connect-to-meo-wifi.sh* if connection is not negociated yet.
  - connect-to-meo-wifi.sh
    - enables radio
    - waits for 10 seconds for the networks to be listed
    - Tries to login successfully with configured credencials in one of the provided networks by calling *meo-wifi-login.sh*
  - (v2 - not implemented) Check connection speed and try to find a faster network

  #### Configuration
  - Username
  - Password ( how to deal with security ? )
  - Networks




  #### Work desk
  1. Run script on start ( for curl )
  https://askubuntu.com/questions/814/how-to-run-scripts-on-start-up