#!/bin/bash

# 设置脚本标题
echo -ne "\033]0;云端更新最新配置\007"

# 跳转到脚本所在的目录
cd "$(dirname "$0")"

# 尝试下载配置的函数
download_config() {
    curl -k -O -L "$1"
    if [[ -f "list.meta.yml" ]]; then
        start_copy
        exit 0
    fi
}

# 备份并替换配置的函数
start_copy() {
    rm -f "../config.yaml_backup"
    [ -f "../config.yaml" ] && mv "../config.yaml" "../config.yaml_backup"
    sed -i -e 's/allow-lan:.*/allow-lan: true/g' -e 's/mixed-port:.*/mixed-port: 1080/g' list.meta.yml
    \cp -p list.meta.yml ../../config_3.yaml 
    mv -f "list.meta.yml" "../config.yaml"
}

# 尝试从第一个URL下载配置
download_config "https://fastly.jsdelivr.net/gh/peasoft/NoMoreWalls@master/list.meta.yml"

# 尝试从第二个URL下载配置
download_config "https://testingcf.jsdelivr.net/gh/peasoft/NoMoreWalls@master/list.meta.yml"
