# infile = [[n[-2], n[-1]] for n in [_.split() for _ in open(0).read().split('\n') if len(_.split()) == 3]]
src = """    000000D6  00 0d 0a 50 61 73 73 77  6f 72 64 3a 20            ...Passw ord: 
000000B9  66                                                 f
000000BA  74                                                 t
000000BB  5f                                                 _
000000BC  77                                                 w
000000BD  61                                                 a
000000BE  6e                                                 n
000000BF  64                                                 d
000000C0  72                                                 r
000000C1  7f                                                 .
000000C2  7f                                                 .
000000C3  7f                                                 .
000000C4  4e                                                 N
000000C5  44                                                 D
000000C6  52                                                 R
000000C7  65                                                 e
000000C8  6c                                                 l
000000C9  7f                                                 .
000000CA  4c                                                 L
000000CB  30                                                 0
000000CC  4c                                                 L
000000CD  0d                                                 ."""

infile = [[n[-2], n[-1]] for n in [_.split() for _ in src.split('\n') if len(_.split()) == 3]]
res = ''
for i, line in enumerate(infile):
    print('line/', line, 'i/', i)
    x, c = line
    if x == '7f':
        res = res[:-1]
    elif c != '.':
        res += c
    else:
        assert(x == '0d')
print('res/', res)

