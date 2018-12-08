#!/bin/bash
cp /etc/apt/sources.list /etc/apt/sources.list.bak
echo deb http://http.kali.org/kali kali-rolling main non-free contrib>/etc/apt/sources.list
echo deb http://mirrors.aliyun.com/kali kali-rolling main non-free contrib>>/etc/apt/sources.list
echo deb http://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib>>/etc/apt/sources.list
cat sorces>>/etc/apt/sources.list
apt-get update
systemctl --user enable pulseaudio
echo "LANG=zh_CN.UTF-8\nLC_ALL=zh_CN.UTF-8">>/etc/environment
apt-get install ibus ibus-pinyin
apt-get install i3
apt install zsh vim sakura lightdm ttf-wqy-zenhei
echo "NOw if you need update prog then keep it.else please press 'Ctrl+C' stop it..."
apt-get dist-upgrade 1>/etc/null 2>&1
echo "DONE！"
