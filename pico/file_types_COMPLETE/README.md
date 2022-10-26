# File types

Link: https://play.picoctf.org/practice/challenge/268?originalEvent=70&page=1
---
File name is a challenge based on the fact that files can contain files. The solution to this challenge is simply to extract files from other files until you reach the end. Then you will get a file containing hexcode. This hexcode you will then convert to text and voila you have got the flag.

Here is a script for this challenge:
```bash
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
```
---
Flag: `picoCTF{f1len@m3_m@n1pul@t10n_?f0r_0b2cur17y_950c4fee}`
