# Use a imagem Node na versão lts-alpine3.19 como base
FROM node:lts-alpine3.19

# Utilize o usuário node para executar a aplicação
USER node

# Defina o diretório de trabalho como: /app-money
WORKDIR /app-money

# Copie o arquivo index.js para o diretório de trabalho do Container
COPY index.js .

# Exponha a porta adequada para que a aplicação seja acessível
EXPOSE 3000

# Configure o comando padrão para executar seu App NodeJS
CMD ["node", "index.js"]
