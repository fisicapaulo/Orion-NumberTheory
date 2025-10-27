```markdown
# Orion-NumberTheory

Coleção de experimentos, notebooks e utilitários sobre Teoria dos Números. Foco em exploração computacional (Colab/Sage) e reprodutibilidade.

## Objetivos
- Registrar estudos e experimentos em teoria dos números.
- Disponibilizar notebooks executáveis no Google Colab e no SageMath.
- Manter dados/resultados reprodutíveis.

## Estrutura do repositório
- docs/ — Documentação do projeto (guias, notas técnicas).
- data/ — Dados de entrada (ou referências a fontes). Evite dados sensíveis.
- results/ — Saídas geradas por scripts/notebooks (gráficos, tabelas, logs).
- src/notebooks_colab/ — Notebooks pensados para o Google Colab.
- src/notebooks_sage/ — Notebooks/worksheets para SageMath.

Observação: o Git não versiona pastas vazias. Se necessário, mantenha arquivos .gitkeep.

## Como começar

Clone o repositório:
```bash
git clone https://github.com/fisicapaulo/Orion-NumberTheory.git
cd Orion-NumberTheory
```

Crie e ative um ambiente (opcional, recomendado). Use a ferramenta de sua preferência (uv/venv/conda). Exemplo com venv:

Linux/macOS:
```bash
python -m venv .venv
source .venv/bin/activate
```

Windows:
```powershell
python -m venv .venv
.\.venv\Scripts\activate
```

Depois:
```bash
pip install -r requirements.txt  # se existir
```

### Estrutura mínima local (se ainda não estiver criada)
Crie as pastas:
```bash
mkdir -p docs data results src/notebooks_colab src/notebooks_sage
```

## Executando notebooks

- Google Colab: abra os .ipynb em src/notebooks_colab/. Se necessário, carregue dados de data/.
- SageMath: use os arquivos em src/notebooks_sage/. Você pode rodar localmente (sage -n jupyter) ou em ambientes online com suporte a Sage.

## Notebooks (abrir no Colab)

Intro (Colab)  
[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fisicapaulo/Orion-NumberTheory/blob/main/src/notebooks_colab/intro_colab.ipynb)

Beal — Fase 1.1  
[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fisicapaulo/Orion-NumberTheory/blob/main/src/notebooks_colab/beal_scanner.ipynb)

ABC — Fase 2.1 (generate rank)  
[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fisicapaulo/Orion-NumberTheory/blob/main/src/notebooks_colab/abc_generate_rank.ipynb)

Szpiro — Agregação 3.4  
[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fisicapaulo/Orion-NumberTheory/blob/main/src/notebooks_colab/szpiro_aggregate_plot.ipynb)

Szpiro — κ_eff 4.1/4.2 (viz)  
[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fisicapaulo/Orion-NumberTheory/blob/main/src/notebooks_colab/szpiro_kappa_viz.ipynb)

Testes mínimos  
[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fisicapaulo/Orion-NumberTheory/blob/main/src/notebooks_colab/test_min.ipynb)

## Notebooks/Worksheets Sage (links diretos no GitHub)

- src/notebooks_sage/abc_audit.sagews  
  https://github.com/fisicapaulo/Orion-NumberTheory/blob/main/src/notebooks_sage/abc_audit.sagews

- src/notebooks_sage/intro.sage  
  https://github.com/fisicapaulo/Orion-NumberTheory/blob/main/src/notebooks_sage/intro.sage

- src/notebooks_sage/szpiro_kappa.sagews  
  https://github.com/fisicapaulo/Orion-NumberTheory/blob/main/src/notebooks_sage/szpiro_kappa.sagews

- src/notebooks_sage/szpiro_local_global.sagews  
  https://github.com/fisicapaulo/Orion-NumberTheory/blob/main/src/notebooks_sage/szpiro_local_global.sagews

Observação: arquivos .sage e .sagews não abrem diretamente no Colab. Utilize SageMath local ou serviços com suporte a Sage.

## Convenções
- Linguagem: Python/SageMath nos notebooks.
- Estilo de código: PEP 8 (quando aplicável).
- Nomes de arquivos/pastas: minúsculas-com-hífen-ou-underscore.

## Contribuição
- Abra issues para dúvidas/ideias/bugs.
- Crie branches para features: feature/nome-da-feature
- Faça pull requests com descrição clara (o que muda, por quê, como testar).

## Licença
Este projeto é licenciado sob a MIT License — veja o arquivo LICENSE para detalhes.

## Agradecimentos
Comunidade de Teoria dos Números e ferramentas open-source (Python, SageMath, Colab). Qualquer referência ou dataset usado deve ser citado em docs/.

## Comandos Git úteis
```bash
git status
git add README.md
git add docs/*.md
git add src/notebooks_colab/*.ipynb
git add src/notebooks_sage/*
```

Observações:
- Os botões do Colab funcionam para arquivos que estejam no branch main com os caminhos informados.
- Se os notebooks estiverem em outro branch ou com nomes diferentes, me diga que eu ajusto os links.
```
Dados de Curvas Elípticas (LMFDB)

Este repositório inclui uma base de dados em dados/curvas com arquivos de curvas elípticas baixados do LMFDB, organizados por primo e por rank, para uso em pesquisas sobre conjecturas relacionadas a curvas elípticas (como BSD, Szpiro, ABC e Beal). Cada arquivo contém milhares de curvas para o primo indicado.

Rank 1:

lmfdb_ec_curvedata_2_3_rank_1.txt
lmfdb_ec_curvedata_5_rank_1.txt
lmfdb_ec_curvedata_7_rank_1.txt
lmfdb_ec_curvedata_11_rank_1.txt
lmfdb_ec_curvedata_13_rank_1.txt
Rank 3:

lmfdb_ec_curvedata_2_3_rank_3.txt
lmfdb_ec_curvedata_5_rank_3.txt
lmfdb_ec_curvedata_7_rank_3.txt
lmfdb_ec_curvedata_11_rank_3.txt
lmfdb_ec_curvedata_13_rank_3.txt
Rank 0 (semistable):

lmfdb_ec_curvedata_2_3_semistable.txt
lmfdb_ec_curvedata_5_semistable.txt
lmfdb_ec_curvedata_7_semistable.txt
lmfdb_ec_curvedata_11_semistable.txt
lmfdb_ec_curvedata_13_semistable.txt
Observações:

Origem: LMFDB (L-functions and Modular Forms Database).
Uso: estes arquivos são consumidos por diversos programas do projeto Orion; recomenda-se referenciar caminhos relativos como ./dados/curvas/<arquivo>.
Formato: texto tabular (um registro por linha) conforme exportado pelo LMFDB.
Citação: ao usar estes dados em publicações, credite o LMFDB e este repositório. Se necessário, inclua o link do LMFDB e a data de obtenção.

