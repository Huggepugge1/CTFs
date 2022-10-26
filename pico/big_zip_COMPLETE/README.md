# Big Zip
Link: https://play.picoctf.org/practice/challenge/322?category=5&page=3&solved=0

### Solution
First unzip archive.
`unzip big-zip-files`

Then cat all of the files and grep for picoCTF.
`find . -type f -exec cat {} + | grep picoCTF`

Flag: `picoCTF{gr3p_15_m4g1c_ef8790dc}`
