# Plano operacional (Colab + CoCalc/Sage)

## Visão geral
- Colab (Python): geração de dados, varreduras, testes modulares, big integers, CSV/JSON, gráficos.
- CoCalc (SageMath): curvas elípticas (N, Δ, Kodaira), rotinas de Tate, fatoração/primalidade, LLL/ECM.
- GitHub: notebooks (.ipynb e .sagews), dados e relatórios.

Reprodutibilidade:
- Colab: célula de setup (pip install leve). 
- CoCalc: Sage nativo (sem instalações extras).
- Saídas versionadas em /results com metadados (data, commit, seed).

## Estrutura
/docs, /data, /src/notebooks_colab, /src/notebooks_sage, /results, /ci(opcional).

## Setup mínimo
Colab: sympy, numpy, pandas. Opcional pyecm. 
Sage: Integers(), factor(), is_prime(), EllipticCurve, conductor(), discriminant(), local_data(), kodaira_symbol().

## Trilhas
1) Beal (Colab; Sage para validação)
2) ABC (Colab geração/ranking; Sage fatoração pesada e auditoria)
3) Szpiro fraco (Sage principal; Colab agregação/gráficos)
4) Szpiro forte (Sage κ_eff; Colab análises/viz)

## Cronograma (4 semanas)
S1: skeleton + Beal 1.1 + ABC 2.1 + Szpiro 3.1 (início)
S2: Beal 1.2 + ABC 2.2 (Sage) + Szpiro 3.2
S3: Szpiro 3.3 + 4.1 + agregações (Colab)
S4: Otimizações, robustez 4.3, documentação final.

