# Especificação de dados

## Beal
- Entrada candidatos (/data/beal_candidates.csv):
  A,B,C,x,y,z,seed,commit,timestamp
- Saída (/results/beal_report.csv):
  A,B,C,x,y,z,gcd,status,notes,verificado_sage(bool),seed,commit,timestamp

## ABC
- Pendentes (/data/abc_pending.csv):
  a,b,c,rad_partial,needs_sage(bool),seed,commit,timestamp
- Top provisório (/data/abc_top_prelim.csv):
  a,b,c,rad,q,method,seed,commit,timestamp
- Final (/results/abc_top.csv):
  rank,a,b,c,rad,q,cert_factors,json_factors,verified_sage(bool),seed,commit,timestamp

## Szpiro (local/global)
- Local (/data/ell_curves_local.csv):
  curve_id,conductor_N,discriminant_Delta,p,vpN,vpDelta,kodaira,extras_json,seed,commit,timestamp
- Baseline local (/results/szpiro_local_baseline.csv):
  p,kodaira,avg_vpN,avg_vpDelta,avg_delta_p,max_delta_p,count
- Gauge (/results/szpiro_local_gauge.csv):
  p,kodaira,params_json,g_vector_json,Cp
- Global (/results/szpiro_global.csv):
  curve_id,log_abs_Delta,log_N,metric,notes

