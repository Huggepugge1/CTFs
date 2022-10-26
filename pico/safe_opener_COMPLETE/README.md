# Safe Opener

Link: https://play.picoctf.org/practice/challenge/294?originalEvent=70&page=2

If you look at the source code you will find the encoded password: `String encodedkey = "cGwzYXMzX2wzdF9tM18xbnQwX3RoM19zYWYz";`. <br>
All you have to do in order to solve the challenge is to decode the password and wrap it in picoCTF{}. <br>
The line `Base64.Encoder encoder = Base64.getEncoder();` sets up an base64 encoder when then gets used in order to encode the users password in the line `encodedkey = encoder.encodeToString(key.getBytes());`. <br>
This tells me that the password is encrypted by base64 and all I have to do is plug it into a decoder and get `cGwzYXMzX2wzdF9tM18xbnQwX3RoM19zYWYz`.

### Decode base64 in terminal
`echo "cGwzYXMzX2wzdF9tM18xbnQwX3RoM19zYWYz" | base64 -d`

---

Flag: `picoCTF{cGwzYXMzX2wzdF9tM18xbnQwX3RoM19zYWYz}`
