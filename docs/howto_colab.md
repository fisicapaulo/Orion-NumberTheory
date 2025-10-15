# Como rodar no Colab

1) Abra o notebook pelo link do GitHub (Open in Colab).
2) Na célula "Setup", rode:
   !pip -q install sympy numpy pandas
3) Parâmetros no topo (tamanhos, limites, seeds).
4) Exportações:
   - Salve CSVs no /content; depois faça download e commit em /data ou /results.
   - Inclua metadados: seed, commit (coloque manualmente) e timestamp (datetime.now()).

Notas:
- Big integers são nativos em Python.
- Para fatorações mais pesadas, marque needs_sage e deixe para a auditoria no Sage.

