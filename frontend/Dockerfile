# Use a imagem base do Node.js
FROM node:18

# Defina a variável de ambiente para OpenSSL
ENV NODE_OPTIONS=--openssl-legacy-provider

# Crie um diretório para o seu app
WORKDIR /app

# Copie o package.json e o package-lock.json (ou yarn.lock)
COPY package*.json ./

# Instale as dependências do app
RUN npm install

# Copie todo o código do projeto para o contêiner
COPY . .

# Instale o Quasar CLI globalmente
RUN npm install -g @quasar/cli

# Exponha a porta na qual o Quasar vai rodar
EXPOSE 8080

# Defina o comando para iniciar o servidor em modo de desenvolvimento
CMD ["quasar", "dev", "-p", "8080"]
#CMD ["quasar", "serve", "-p", "8080"]
#CMD ["quasar", "build"]