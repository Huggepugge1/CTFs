#!/bin/zsh
source ~/.zshrc
wget https://artifacts.picoctf.net/c/332/disk.flag.img.gz
gunzip disk.flag.img.gz
mkdir mnt
mount -o loop,ro,offset=184549376 disk.flag.img mnt
cat ./mnt/root/my_folder/flag.uni.txt
umount mnt
rm -rf mnt
rm disk.flag.img
