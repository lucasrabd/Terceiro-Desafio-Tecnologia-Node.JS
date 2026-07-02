# 🐳 Terceiro Desafio de Tecnologia — Node.js

Parte do desafio DevOps da **DimDim**: migração do ambiente de desenvolvimento para containers Docker. Este repositório cobre a stack **Node.js** — uma API Express minimalista, containerizada, servindo como prova de conceito de deploy em Docker.

## 👥 Equipe (Wink)

- Bruno Ramos da Costa (RM551942)
- Guilherme Faria de Aguiar (RM551374)
- Henrique Roncon Pereira (RM99161)
- Lucas Carabolad Bob (RM550519)
- Thiago Ulrych (RM97951)

---

## 📦 Stack

![Node.js](https://img.shields.io/badge/Node.js-LTS-339933?style=flat&logo=nodedotjs&logoColor=white)
![Express](https://img.shields.io/badge/Express-4.19-000000?style=flat&logo=express&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-Alpine-2496ED?style=flat&logo=docker&logoColor=white)

---

## 💡 Objetivo

Documentar o processo de implantação de tecnologias (Java, Python e Node.js, cada uma em seu próprio repositório do desafio) em containers Docker, para a equipe de Arquitetura da DimDim avaliar portabilidade, isolamento e facilidade de deploy do ambiente de desenvolvimento.

## 📁 Estrutura do Projeto

```
Terceiro-Desafio-Tecnologia-Node.JS-main/
├── index.js           # API Express — rota única "/"
├── package.json         # Dependências (express)
├── Dockerfile              # Build da imagem Docker
├── LICENSE                   # MIT
└── .gitignore                  # Ignora node_modules/ e artefatos de build
```

> `node_modules/` e um `app.tar.gz` (tarball com o repo inteiro, incluindo `.git`) estavam commitados no zip original — foram removidos e adicionados ao `.gitignore`. Depois de clonar, rode `npm install` normalmente.

## 🧩 O que a API faz

Uma única rota:

| Método | Rota | Resposta |
|---|---|---|
| GET | `/` | `Implantação efetuada com sucesso. Bom trabalho!.` |

---

## 🚀 Como rodar localmente (sem Docker)

```bash
npm install
node index.js
```

Acesse `http://localhost:3000`.

## 🐳 Como rodar com Docker

```bash
docker build -t terceiro-desafio-node .
docker run -p 3000:3000 terceiro-desafio-node
```

> O `Dockerfile` original só copiava `index.js` pra dentro da imagem, sem rodar `npm install` — como o `index.js` depende do pacote `express`, o container quebrava em tempo de execução com `Cannot find module 'express'`. Corrigido: agora ele copia o `package.json`, instala as dependências (`npm install --omit=dev`) e só depois copia o código.

Acesse `http://localhost:3000`.

---

## 📄 Licença

MIT — veja [LICENSE](LICENSE).
