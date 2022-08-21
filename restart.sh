#!/bin/bash
while [ 1 ] ; do
sleep 3
    if [ $(ps -ef|grep /usr/local/bin/sui-node|grep -v grep|wc -l) -eq 0 ] ; then # 将exe_name替换成你想要监测的可执行程序名字
        echo "[`date +%F\ %T`] exe_name is offline, try to restart..." >> /blockchain/sui/monitor.log;
        bash sui-full-node-install.sh upgrade &  # 将exe_name替换成你想要监测的可执行程序名字
    else
        echo "[`date +%F\ %T`] exe_name is online..." >> /blockchain/sui/monitor.log;
    fi
    sleep 5m
done
