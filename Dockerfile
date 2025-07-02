# Stage 1: builder
FROM python:3.12-slim AS builder

WORKDIR /app

# Copia os requisitos e instala com prefixo personalizado
COPY requirements.txt .
RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

# Stage 2: imagem final enxuta
FROM python:3.12-slim

WORKDIR /app

# ✅ Adiciona diretório onde os binários do pip ficaram no PATH
ENV PATH="/usr/local/bin:/install/bin:$PATH"

# Copia os pacotes Python instalados
COPY --from=builder /install /usr/local

# Copia o restante do código-fonte
COPY . .

EXPOSE 8000

# ✅ Executa uvicorn com caminho resolvido no PATH
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
