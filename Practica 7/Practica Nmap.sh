#!/bin/bash
#Diego Alberto Hdz Adame

hostname -I

curl ifconfig.me

nmap 10.0.2.15 > resultado.txt

nmap --script=vuln scanme.nmap.org >> resultado.txt
