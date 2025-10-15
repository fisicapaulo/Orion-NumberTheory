Orion-NumberTheory
Coleção de experimentos, notebooks e utilitários sobre Teoria dos Números. Foco em exploração computacional (Colab/Sage) e reprodutibilidade.

Objetivos
Registrar estudos e experimentos em teoria dos números.
Disponibilizar notebooks executáveis no Google Colab e no SageMath.
Manter dados/resultados reprodutíveis.
Estrutura do repositório
docs/ — Documentação do projeto (guias, notas técnicas).
data/ — Dados de entrada (ou referências a fontes). Evite dados sensíveis.
results/ — Saídas geradas por scripts/notebooks (gráficos, tabelas, logs).
src/notebooks_colab/ — Notebooks pensados para o Google Colab.
src/notebooks_sage/ — Notebooks/worksheets para SageMath.
Observação: o Git não versiona pastas vazias. Se necessário, mantenha arquivos .gitkeep.

Como começar
Clone o repositório
git clone https://github.com/fisicapaulo/Orion-NumberTheory.git
cd Orion-NumberTheory
Crie e ative um ambiente (opcional, recomendado)
Python (uv/venv/conda) — escolha sua ferramenta preferida. Exemplo com venv:
python -m venv .venv
source .venv/bin/activate (Linux/macOS)
.venv\Scripts\activate (Windows)
pip install -r requirements.txt (se existir)
Estrutura mínima local (se ainda não estiver criada)
docs/, data/, results/, src/notebooks_colab/, src/notebooks_sage/
Executando notebooks
Google Colab: abra os .ipynb em src/notebooks_colab/. Se necessário, carregue dados de data/.
SageMath: use os arquivos em src/notebooks_sage/. Você pode rodar localmente (sage -n jupyter) ou em ambientes online com suporte a Sage.
Convenções
Linguagem: Python/SageMath nos notebooks.
Estilo de código: PEP 8 (quando aplicável).
Nomes de arquivos/pastas: minúsculas-com-hífen-ou-underscore.
Contribuição
Abra issues para dúvidas/idéias/bugs.
Crie branches para features: feature/nome-da-feature
Faça pull requests com descrição clara (o que muda, por quê, como testar).
Licença
Este projeto é licenciado sob a MIT License — veja o arquivo LICENSE para detalhes.

Agradecimentos
Comunidade de Teoria dos Números e ferramentas open-source (Python, SageMath, Colab).
Qualquer referência ou dataset usado deve ser citado em docs/.
