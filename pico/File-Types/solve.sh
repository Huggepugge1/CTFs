#!/bin/bash
chmod +x Flag.pdf
./Flag.pdf
binwalk -e flag
cd _flag.extracted
binwalk -e 64
cd _64.extracted
lzip -d flag
mv flag.out flag.lz4
lz4 flag.lz4
mv flag flag.lzma
lzma -d flag.lzma
mv flag flag.lzop
lzop -d flag.lzop
lzip -d flag
mv flag.out flag.xz
xz -d flag.xz
cat flag | xxd -p -r
cd ../..
rm -rf _flag.extracted
rm flag

