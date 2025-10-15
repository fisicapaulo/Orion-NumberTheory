%md
# ABC — Auditoria no Sage (Fase 2.2–2.3)

import csv, time
import pandas as pd

pending = 'data/abc_pending.csv'
df = pd.read_csv(pending)
rows = []
for _,r in df.iterrows():
    a=int(r['a']); b=int(r['b']); c=int(r['c'])
    if gcd(a,b)!=1 or a+b!=c:
        continue
    fa = factor(a); fb = factor(b); fc = factor(c)
    rad = 1
    for f in [fa,fb,fc]:
        for p,e in f:
            rad *= int(p)
    q = RR(log(c)/log(rad))
    rows.append({'a':a,'b':b,'c':c,'rad':int(rad),'q':float(q),'verified_sage':True,'ts':time.time()})

out = 'results/abc_top.csv'
pd.DataFrame(rows).sort_values('q', ascending=False).to_csv(out, index=False)
print("Salvo em", out)

