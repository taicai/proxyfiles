#!/bin/bash
cd "$(dirname "$0")"

echo "是否执行IP更新？IP更新从云端更新IP配置以解决封锁问题！第一次使用务必先更新IP."
echo "按7跳过，按1选择ip1更新，若ip1不好用再选ip2、3...更新，如果更新后都用不了，请发邮件到 freeman105@gmail.com 进行反馈！"
read -p "1、ip1更新  2、ip2更新  3、ip3更新  4、ip4更新 5、ip5更新 6、ip6更新 7、跳过: " choice

case $choice in
    1) 
    bash "$(dirname "$0")/clash.meta/ip_Update/ip_1.sh"
        ;;
    2) 
    bash "$(dirname "$0")/clash.meta/ip_Update/ip_2.sh"
        ;;
    3) 
    bash "$(dirname "$0")/clash.meta/ip_Update/ip_3.sh"
        ;;
    4) 
    bash "$(dirname "$0")/clash.meta/ip_Update/ip_4.sh"
        ;;
    5) 
    bash "$(dirname "$0")/clash.meta/ip_Update/ip_5.sh"
        ;;
    6) 
    bash "$(dirname "$0")/clash.meta/ip_Update/ip_6.sh"
        ;;
    7) 
    echo "跳过IP更新"
        ;;
    *) 
    echo "无效选择"
        ;;
esac

clash.meta/mihomo-linux-386 -d clash.meta
