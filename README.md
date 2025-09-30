# Sequelize_Atividade

Repositório de uma aplicação Node.js com Sequelize, Express e Handlebars, desenvolvida como atividade prática para manipulação de banco de dados relacional e interface web.

## Objetivo

Aprender a usar o Sequelize com foco no relacionamento. 

## Funcionalidades

- Cadastro, edição, visualização e exclusão de usuários
- Cadastro e exclusão de endereços vinculados a usuários
- Visualização de detalhes do usuário e seus endereços
- Listagem de usuários cadastrados
- Interface web com Handlebars

## Estrutura do Projeto

```
├── db/
│   └── conn.js             # Conexão com o banco via Sequelize
├── models/
│   ├── Address.js          # Model de endereço
│   └── User.js             # Model de usuário
├── views/
│   ├── adduser.handlebars  # Formulário de cadastro de usuário
│   ├── home.handlebars     # Página inicial/lista de usuários
│   ├── layouts/            # Layouts base do Handlebars
│   ├── useredit.handlebars # Edição de usuário e endereços
│   └── userview.handlebars # Visualização de usuário
├── public/                 # Arquivos estáticos (css, img)
├── index.js                # Lógica principal da aplicação e rotas
├── package.json            # Dependências e scripts
├── banco_instrucoes.sql    # Script SQL auxiliar
└── .gitignore
```

## Instalação

1. Clone o repositório:
   ```bash
   git clone https://github.com/EnricoPieroCosta/Sequelize_Atividade.git
   cd Sequelize_Atividade
   ```

2. Instale as dependências principais:
   ```bash
   npm install express express-handlebars pg pg-hstore sequelize
   ```

3. Instale as dependências de desenvolvimento:
   ```bash
   npm install --save-dev nodemon sequelize-cli
   ```

4. Configure a conexão do banco em `db/conn.js`.


5. Inicie o servidor:
   ```bash
   npm start
   ```
   Ou, para desenvolvimento com recarregamento automático:
   ```bash
   npm run dev
   ```

7. Acesse via navegador: [http://localhost:3000](http://localhost:3000)

## Principais Rotas

- `/` : Lista os usuários cadastrados
- `/users/create` : Formulário para novo usuário
- `/users/:id` : Detalhes do usuário
- `/users/edit/:id` : Editar usuário e endereços
- `/users/delete/:id` : Excluir usuário
- `/address/create` : Adicionar endereço a usuário
- `/address/delete` : Remover endereço

## Observações

- O projeto utiliza templates Handlebars na pasta `views/` para as páginas.
- O banco pode ser SQLite, Postgres ou outro, basta ajustar a configuração.
