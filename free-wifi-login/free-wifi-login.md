# Free wifi login notes

## MEO WIFI

### Login
Login is done in a login page. 
Emulating the request should be enough to negociate authentication

#### CURL

curl 'https://servicoswifi.apps.meo.pt/HotspotConnection.asmx/Login?callback=jQuery34109281325322302776_1592673584341&username=samuelgoncalo%40hotmail.com&password=hJcIQKYPBBANJxcDh%2BNtDg%3D%3D&navigatorLang=pt&_=1592673584344' \
  -H 'Connection: keep-alive' \
  -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36' \
  -H 'Accept: */*' \
  -H 'Sec-Fetch-Site: same-site' \
  -H 'Sec-Fetch-Mode: no-cors' \
  -H 'Sec-Fetch-Dest: script' \
  -H 'Referer: https://wifimeo.meo.pt/pt' \
  -H 'Accept-Language: pt-PT,pt;q=0.9,en-US;q=0.8,en;q=0.7' \
  -H 'Cookie: ISAWPLB{023E79ED-B70B-4B30-99FB-40FF0D841DF7}={B2D7605B-4BE8-4BB4-B868-3F2F0CF54C05}' \
  --compressed


  #### Application
  The application will enforce the login workflow.
  WorkFlow:
  - Try to login successfully with configured credencials in one of the provided networks
  - Check connection status and react accordingly
  - (v2) Check connection speed and try to find a faster network

  #### Configuration
  - Username
  - Password ( how to deal with security ? )
  - Networks


  #### Work desk
  1. Run script on start ( for curl )
  https://askubuntu.com/questions/814/how-to-run-scripts-on-start-up