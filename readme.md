# Imersao DevOps - API de Gestao Escolar

API desenvolvida com FastAPI para gerenciar alunos, cursos e matriculas em uma instituicao de ensino. Projeto de estudo com foco em fundamentos de API, banco de dados, Docker e praticas iniciais de DevOps.

![Python](https://img.shields.io/badge/Python-3.10%2B-yellow)
![FastAPI](https://img.shields.io/badge/FastAPI-API-green)
![Docker](https://img.shields.io/badge/Docker-ready-blue)

## Funcionalidades

- Cadastro e consulta de alunos.
- Cadastro e consulta de cursos.
- Gestao de matriculas.
- Persistencia com SQLite.
- Documentacao interativa via Swagger em `/docs`.
- Suporte a execucao local e via Docker.

## Requisitos

- Python 3.10 ou superior
- Git
- Docker e Docker Compose, opcional

## Execucao local

Crie e ative um ambiente virtual:

```powershell
python -m venv .venv
.venv\Scripts\activate
```

Instale as dependencias:

```powershell
pip install -r requirements.txt
```

Inicie a API:

```powershell
uvicorn app:app --reload
```

Acesse a documentacao:

```text
http://127.0.0.1:8000/docs
```

## Execucao com Docker

```powershell
docker compose up --build
```

## Estrutura

```text
.
|-- app.py
|-- database.py
|-- models.py
|-- schemas.py
|-- requirements.txt
|-- Dockerfile
|-- docker-compose.yml
`-- routers/
```

## Banco de dados

O projeto usa SQLite. O arquivo `escola.db` pode ser recriado durante a execucao local. Em ambientes reais, evite versionar bancos com dados sensiveis.

## Endpoints

Use `/docs` para consultar e testar os endpoints disponiveis.

