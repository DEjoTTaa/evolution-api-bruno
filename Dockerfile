FROM node:20-alpine

WORKDIR /evolution

# Instalar dependências do sistema
RUN apk add --no-cache \
    git \
    curl \
    bash

# Copiar arquivos
COPY package*.json ./
COPY . .

# Instalar dependências
RUN npm install --production

# Expor porta
EXPOSE 8080

# Comando de start
CMD ["npm", "run", "start:prod"]
