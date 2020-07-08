#  curl 'https://servicoswifi.apps.meo.pt/HotspotConnection.asmx/Login?callback=jQuery341027213196722548627_1594222009900&username=samuelgoncalo%40hotmail.com&password=ndkv2bX0vPD%2Fg6tcutnhwQ%3D%3D&navigatorLang=pt&_=1594222009902' \
#  -H 'Connection: keep-alive' \
#  -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36' \
#  -H 'Accept: */*' \
#  -H 'Sec-Fetch-Site: same-site' \
#  -H 'Sec-Fetch-Mode: no-cors' \
#  -H 'Sec-Fetch-Dest: script' \
#  -H 'Referer: https://wifimeo.meo.pt/pt' \
#  -H 'Accept-Language: pt-PT,pt;q=0.9,en-US;q=0.8,en;q=0.7' \
#  -H 'Cookie: ISAWPLB{023E79ED-B70B-4B30-99FB-40FF0D841DF7}={F51CCA86-567E-451C-ABC3-F8D81DE5819A}' \
#  --compressed 


# uses only inside ( ) response [ which is the json ]. Inside json it uses jq to find the result field only
curl 'https://servicoswifi.apps.meo.pt/HotspotConnection.asmx/Login?callback=jQuery3410729614172116924_1594228224850&username=samuelgoncalo%40hotmail.com&password=2co7jgLbiHVKguu1eZefgQ%3D%3D&navigatorLang=en&_=1594228224852' | grep -oP '(?<=\().*(?=\))' | jq .result
