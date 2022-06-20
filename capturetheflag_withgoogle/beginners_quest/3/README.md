# 3

For me, this challenge was a logical programming challenge solved by trial and error. I recommend spending a couple of hours or at least one if you can not solve it and really try to solve it because the solution is not so complicated. My solution is not perfect but works (kind of).

### Code:
```js
function controlCar(scanArray) {
    let left = 0;
    let right = 0;
    if (scanArray[6] < 40 || scanArray[7] < 40 || scanArray[8] < 40 || scanArray[9] < 40 || scanArray[10] < 40) {
        for (let i = 0; i < 7; i++) {
            let current = 10000000000000000000000000;
            for (let j = i; j < i+2; j++) {
                current = Math.min(scanArray[j], current);
            }
            left = Math.max(current, left);
        }
        for (let i = 9; i < scanArray.length-1; i++) {
            let current = 10000000000000000000000000;
            for (let j = i; j < i+2; j++) {
                current = Math.min(scanArray[j], current);
            }
            right = Math.max(current, right);
        }
    }
    if (left > right && left > 10) {return -10}
    else if (right > 10) {return 10};
    return 0;
}
```

### Flag:
`CTF{cbe138a2cd7bd97ab726ebd67e3b7126707f3e7f}`
