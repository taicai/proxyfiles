#!/bin/bash
cd "$(dirname "$0")"
timeout 5 bash "$(dirname "$0")/clash.meta/ip_Update/ip_1.sh"
timeout 5 bash "$(dirname "$0")/clash.meta/ip_Update/ip_2.sh"
timeout 5 bash "$(dirname "$0")/clash.meta/ip_Update/ip_3.sh"
timeout 5 bash "$(dirname "$0")/clash.meta/ip_Update/ip_4.sh"
timeout 5 bash "$(dirname "$0")/clash.meta/ip_Update/ip_5.sh"
timeout 5 bash "$(dirname "$0")/clash.meta/ip_Update/ip_6.sh"
timeout 5 wget -t 2 --no-check-certificate https://www.gitlabip.xyz/Alvin9999/PAC/refs/heads/master/backup/img/1/2/ipp/singbox/1/config.json


git add *
git commit -am "update files"
git push 
