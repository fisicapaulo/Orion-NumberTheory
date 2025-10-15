%md
# Szpiro — κ_eff (Fase 4.1)

import pandas as pd, math
df = pd.read_csv('data/ell_curves_local.csv')
g = df.groupby('curve_id').agg({'conductor_N':'max','discriminant_Delta':'max'}).reset_index()
def kappa(N,D):
    if N<=1 or abs(D)<=1: return float('nan')
    return float(log(abs(D))/log(N))
g['kappa_eff'] = g.apply(lambda r: kappa(r['conductor_N'], r['discriminant_Delta']), axis=1)
g.to_csv('results/szpiro_kappa.csv', index=False)
print("κ_eff salvo em results/szpiro_kappa.csv")

