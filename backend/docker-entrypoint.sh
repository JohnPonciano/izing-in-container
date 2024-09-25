#!/bin/sh

# Adicione logs para ver se as variáveis de ambiente estão corretas
echo "Iniciando o backend com as seguintes variáveis de ambiente:"
env

# Verifique se o arquivo buildado existe
if [ -f "./dist/server.js" ]; then
  echo "Arquivo de build encontrado. Iniciando o PM2..."
  pm2-docker start ./dist/server.js
else
  echo "Erro: arquivo ./dist/server.js não encontrado. O build falhou?"
  exit 1
fi
