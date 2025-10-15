# Como rodar no CoCalc (Sage)

1) Abra o .sagews (worksheet) ou .ipynb (kernel Sage).
2) Execute célula a célula.
3) Exporte CSV usando Python/Sage:
   - with open('data/arquivo.csv','w') as f: ...
4) Funções úteis:
   - factor(n), is_prime(n)
   - E = EllipticCurve([...]); E.conductor(), E.discriminant(), E.local_data(p), E.kodaira_symbol()
5) Para auditoria ABC:
   - Fatorar candidatos marcados "needs_sage"
   - Confirmar coprimalidade e recomputar rad e q

