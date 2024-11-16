infile = [[n[-2], n[-1]] for n in [_.split() for _ in open(0).read().split('\n') if len(_.split()) == 3]]
res = ''
for i, line in enumerate(infile):
    print('line/', line, 'i/', i)
    l, r = line
    if l == '7f':
        res = res[:-1]
    elif r != '.':
        res += r
    else:
        assert(l == '0d')
print('res/', res)


