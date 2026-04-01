# Banco de Dados - Sistema de Cinemas 🎥

Projeto de **modelagem e criação de banco de dados relacional** para gerenciamento de cinemas, filmes, sessões e público. 

Desenvolvido como trabalho da disciplina de Banco de Dados.

## 📋 Sobre o Projeto

Este projeto consiste na criação de um banco de dados MySQL para um sistema de cinemas, contendo informações sobre:
- Cinemas (dados cadastrais e localização)
- Sessões de filmes
- Filmes (nacionais e estrangeiros)
- Elenco, atores e diretores
- Público (quantidade de espectadores)

O modelo foi criado inicialmente no **BRModelo** (diagrama ER) e depois validado através de **engenharia reversa** no MySQL Workbench para confirmar a normalização e integridade das tabelas.

## 🛠️ Tecnologias Utilizadas

- **MySQL**
- **BRModelo** (para modelagem conceitual)
- **MySQL Workbench** (engenharia reversa e validação do modelo lógico/físico)

## 🗄️ Estrutura do Banco de Dados

### Banco de Dados
- **Nome:** `cinemas`

### Tabelas Criadas

- **Cinemas** — Informações dos cinemas (CNPJ, nome fantasia, capacidade, endereço completo)
- **Sessoes** — Horários, intervalos e vínculo com o cinema
- **Publico** — Dados de público (total de assistentes por sessão/filme)
- **Estrangeiros** — Informações de filmes estrangeiros (país de origem, títulos)
- **Atores** — Cadastro de atores (nome, nacionalidade, idade, informações)
- **Diretores** — Diretores vinculados aos atores (com chave estrangeira)
- **Elenco** — Relacionamento entre atores e filmes
- **Filmes** — Informações principais dos filmes (faixa etária, duração, gênero) com vínculos para elenco, público, estrangeiros e sessões

## 📊 Modelagem

- **Diagrama Entidade-Relacionamento (ER)** → Criado no **BRModelo**
- **Modelo Lógico** → Gerado a partir do diagrama
- **Modelo Físico** → Script SQL executado no MySQL
- **Validação** → Engenharia Reversa realizada no MySQL Workbench para confirmar que o banco está corretamente normalizado (sem redundâncias graves e com integridade referencial)

## 📁 Arquivos do Projeto

- `script_cinemas.sql` → Script completo de criação do banco e tabelas
- `diagrama_brmodelo.brm` → Diagrama original feito no BRModelo (se disponível)
- `diagrama_reverso.mwb` → Arquivo do MySQL Workbench após engenharia reversa
- `README.md`

🔧 Observações sobre o Modelo

Utiliza chaves primárias auto-incrementáveis onde apropriado

Relacionamentos via chaves estrangeiras (FOREIGN KEY)

Algumas tabelas possuem campos AUTO_INCREMENT UNIQUE

O modelo foi revisado e validado via engenharia reversa

📌 Status do Projeto

✅ Modelo conceitual criado no BRModelo

✅ Script SQL gerado

✅ Engenharia Reversa realizada com sucesso

✅ Banco criado e tabelas com integridade referencial

## 🚀 Como Executar

1. Clone o repositório:
```bash
git clone https://github.com/seuusuario/banco-de-dados-cinemas.git
