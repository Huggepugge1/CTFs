# 4

This challenge is about bitmasks. In the file chal.c there is a lot of functions called `gpio_set_mask` and `gpio_clr_mask` and `sleep_us`. Set mask is a function which uses `|`, `bitwise or`, to set pins to high and clear mask uses `&`, `bitwise and`, to set pins to low. The pins in question are pins on a Raspberry Pi Pico. `Sleep_us` is in our case only going to print out the result.

### script:
```py
gpio = 0

def gpio_set_mask(x):
    global gpio
    gpio |= x

def gpio_clr_mask(x):
    global gpio
    gpio &= ~x

def sleep_us(x):
    global gpio
    print(chr(gpio), end="")

gpio_set_mask(67);
gpio_clr_mask(0);
sleep_us(100);
gpio_set_mask(20);
gpio_clr_mask(3);
sleep_us(100);
gpio_set_mask(2);
gpio_clr_mask(16);
sleep_us(100);
gpio_set_mask(57);
gpio_clr_mask(4);
sleep_us(100);
gpio_set_mask(0);
gpio_clr_mask(25);
sleep_us(100);
gpio_set_mask(5);
gpio_clr_mask(2);
sleep_us(100);
gpio_set_mask(18);
gpio_clr_mask(65);
sleep_us(100);
gpio_set_mask(1);
gpio_clr_mask(2);
sleep_us(100);
gpio_set_mask(64);
gpio_clr_mask(17);
sleep_us(100);
gpio_set_mask(2);
gpio_clr_mask(0);
sleep_us(100);
gpio_set_mask(1);
gpio_clr_mask(6);
sleep_us(100);
gpio_set_mask(18);
gpio_clr_mask(65);
sleep_us(100);
gpio_set_mask(1);
gpio_clr_mask(0);
sleep_us(100);
gpio_set_mask(4);
gpio_clr_mask(2);
sleep_us(100);
gpio_set_mask(0);
gpio_clr_mask(0);
sleep_us(100);
gpio_set_mask(64);
gpio_clr_mask(16);
sleep_us(100);
gpio_set_mask(16);
gpio_clr_mask(64);
sleep_us(100);
gpio_set_mask(2);
gpio_clr_mask(4);
sleep_us(100);
gpio_set_mask(0);
gpio_clr_mask(3);
sleep_us(100);
gpio_set_mask(9);
gpio_clr_mask(0);
sleep_us(100);
gpio_set_mask(0);
gpio_clr_mask(1);
sleep_us(100);
gpio_set_mask(0);
gpio_clr_mask(8);
sleep_us(100);
gpio_set_mask(8);
gpio_clr_mask(0);
sleep_us(100);
gpio_set_mask(65);
gpio_clr_mask(24);
sleep_us(100);
gpio_set_mask(22);
gpio_clr_mask(64);
sleep_us(100);
gpio_set_mask(0);
gpio_clr_mask(0);
sleep_us(100);
gpio_set_mask(0);
gpio_clr_mask(5);
sleep_us(100);
gpio_set_mask(0);
gpio_clr_mask(2);
sleep_us(100);
gpio_set_mask(65);
gpio_clr_mask(16);
sleep_us(100);
gpio_set_mask(22);
gpio_clr_mask(65);
sleep_us(100);
gpio_set_mask(1);
gpio_clr_mask(6);
sleep_us(100);
gpio_set_mask(4);
gpio_clr_mask(0);
sleep_us(100);
gpio_set_mask(66);
gpio_clr_mask(21);
sleep_us(100);
gpio_set_mask(1);
gpio_clr_mask(0);
sleep_us(100);
gpio_set_mask(0);
gpio_clr_mask(2);
sleep_us(100);
gpio_set_mask(24);
gpio_clr_mask(65);
sleep_us(100);
gpio_set_mask(67);
gpio_clr_mask(24);
sleep_us(100);
gpio_set_mask(24);
gpio_clr_mask(67);
sleep_us(100);
gpio_set_mask(2);
gpio_clr_mask(8);
sleep_us(100);
gpio_set_mask(65);
gpio_clr_mask(18);
sleep_us(100);
gpio_set_mask(16);
gpio_clr_mask(64);
sleep_us(100);
gpio_set_mask(2);
gpio_clr_mask(0);
sleep_us(100);
gpio_set_mask(68);
gpio_clr_mask(19);
sleep_us(100);
gpio_set_mask(19);
gpio_clr_mask(64);
sleep_us(100);
gpio_set_mask(72);
gpio_clr_mask(2);
sleep_us(100);
gpio_set_mask(2);
gpio_clr_mask(117);
sleep_us(100);
```

###flag:
`CTF{be65dfa2355e5309808a7720a615bca8c82a13d7}`
