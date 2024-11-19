res = ''
infile = open(0).read().split('\n')
lines = [[n[-2], n[-1]] for n in [_.split() for _ in infile if len(_.split()) == 3]]

for i, line in enumerate(lines):
    print('line/', line, 'i/', i)
    x, c = line
    if x == '7f':
        res = res[:-1]
    elif c != '.':
        res += c
    else:
        assert (x == '0d')

print('res/', res)

