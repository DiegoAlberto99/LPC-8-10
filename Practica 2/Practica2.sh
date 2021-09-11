#!/bin/bash
#Diego Alberto Hdz Adame
echo "primera peticion:"
url="https://www.virustotal.com/"
dato="?fields=id"
curl --request GET $url$dato > Datos.txt
echo "Segunda peticion:"
url2="https://www.virustotal.com/"
dato2="?fields=name"
curl --request GET $url$dato2 > Datos2.txt