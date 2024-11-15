a = ord('a')
for i in range(25):
    print(i, ''.join(chr(a + (ord(c) - a + i) % 26) for c in 'cdiiddwpgswtgt'))
