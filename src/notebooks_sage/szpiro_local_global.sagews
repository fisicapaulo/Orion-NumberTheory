%md
# Szpiro — Local e Global (Fase 3.1–3.2)

%md
## Dataset e extração local
# Exemplo: construir algumas curvas de teste (substitua por sua coleção)
curves = [
    EllipticCurve([0,0,1,-1,0]),
    EllipticCurve([0,0,1,-1,1]),
]

import csv, time
out = 'data/ell_curves_local.csv'
with open(out, 'w') as f:
    w = csv.writer(f)
    w.writerow(['curve_id','conductor_N','discriminant_Delta','p','vpN','vpDelta','kodaira','extras_json','timestamp'])
    for i,E in enumerate(curves):
        N = E.conductor()
        D = E.discriminant()
        S = prime_divisors(N)
        for p in S:
            ld = E.local_data(p)
            vpN = valuation(N,p)
            vpDelta = valuation(D,p)
            kod = E.kodaira_symbol(p)
            w.writerow([f'E{i}', int(N), int(D), int(p), int(vpN), int(vpDelta), str(kod), '{}', time.time()])

print("Salvo em", out)

%md
## Baseline local (δ_p)
import pandas as pd
df = pd.read_csv('data/ell_curves_local.csv')
df['delta_p'] = df['vpDelta'] - 6*df['vpN']
grp = df.groupby(['p','kodaira'])['delta_p'].agg(['mean','max','count']).reset_index()
grp.to_csv('results/szpiro_local_baseline.csv', index=False)
print("Baseline salvo em results/szpiro_local_baseline.csv")

