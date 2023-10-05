# Sleuthkit Intro

Link: https://play.picoctf.org/practice/challenge/301?originalEvent=70&page=2

In order to solve this challenge I had to find how many sectors was on the drive. I used fdisk to find that out.

## Solution

`gunzip disk.img.gz` --> Decompress gz into image <br>
`fdisk disk.img` --> Answer is in the "Sectors" column of disk.img1 <br>
`nc saturn.picoctf.net 52279` --> Write number of sectors in the remote server <br>

Flag: `picoCTF{mm15_f7w!}`
