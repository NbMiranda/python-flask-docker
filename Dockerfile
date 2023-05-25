# Dockerfile para a imagem do Python
FROM python:3.8

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia todos os arquivos do diretório atual para o contêiner
COPY . .

# Instala as dependências do Python
RUN pip install --upgrade pip==21.3.1 \
    && pip install flask pyinstaller
    
# Comando padrão a ser executado quando o contêiner for iniciado
CMD ["python", "app/app.py"]
