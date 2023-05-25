# Dockerfile para a imagem do Python

FROM python:3.8

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia os arquivos de código para o contêiner
COPY ./app .
    
# Instala as dependências do Python
RUN pip install --upgrade pip==21.3.1 \
    && pip install flask pyinstaller
    
# Comando padrão a ser executado quando o contêiner for iniciado
CMD ["python", "app.py"]
