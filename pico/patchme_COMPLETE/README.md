# Patchme.py

Link: https://play.picoctf.org/practice/challenge/287?originalEvent=70&page=2

This challenge is about finding the password and running the python script with the flag in the directory.

## Solution:
In the file you can find this function:
```python3
def level_1_pw_check():
    user_pw = input("Please enter correct password for flag: ")
    if( user_pw == "ak98" + \
                   "-=90" + \
                   "adfjhgj321" + \
                   "sleuth9000"):
        print("Welcome back... your flag, user:")
        decryption = str_xor(flag_enc.decode(), "utilitarian")
        print(decryption)
        return
    print("That password is incorrect")
```
In the function there is an if statement with a split up password. Piece the password together and you get `ak98-=90adfjhgj321sleuth9000`. Run the file and input the password to get the flag.

Flag: `picoCTF{p47ch1ng_l1f3_h4ck_21d62e33}`
