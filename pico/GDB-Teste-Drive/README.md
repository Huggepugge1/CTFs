# GDB Test Drive

Link: https://play.picoctf.org/practice/challenge/273?originalEvent=70&page=1
---
This challenge is about gbd debugging.
---
Solution:
```bash
chmod +x gdbme
gdb gdbme
layout asm
break *(main+99)
run
jump *(main+104)
```
There is you flag!
---
Flag: `picoCTF{d3bugg3r_dr1v3_7776d758}`
