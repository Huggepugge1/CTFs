# First Find
Link: https://play.picoctf.org/practice/challenge/320?category=5&page=3&solved=0

### Solution
First unzip archive.
`unzip files.zip`

Then find the file with the name mentioned in the excercise and cat its content.
`find -name uber-secret.txt`
`cat ./files/adequate_books/more_books/.secret/deeper_secrets/deepest_secrets/uber-secret.txt`

Or do it in one go.
`find -name uber-secret.txt -exec cat {} +`

flag: `picoCTF{f1nd_15_f457_ab443fd1}`
