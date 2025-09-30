--Só usar esse comando para criação do banco baseado no template (Tabela Users e Addresses)

CREATE DATABASE nodesequelize
    WITH 
    OWNER = seu_usuario
    ENCODING = 'UTF8'
    LC_COLLATE = 'pt_BR.UTF-8'
    LC_CTYPE = 'pt_BR.UTF-8'
    TEMPLATE = template0;