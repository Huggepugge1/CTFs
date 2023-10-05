from enigma import *


file_contents = get_file_contents("_Forensics is fun.pptm.extracted/ppt/slideMasters/hidden").replace(b" ", b"")
plain_text = auto_solve(file_contents)[0][1]
flag = find_in_string(plain_text)[0][1]
print(flag.decode("utf-8"))

