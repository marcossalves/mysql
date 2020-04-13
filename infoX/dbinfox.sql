-- comentários 
-- a linha abaixo cria um banco de dados
create database dbinfox;
-- a linha abaixo escolhe o banco de dados a ser utilizado
use dbinfox;
-- o bloco de instruções abaixo cria uma tabela
create table tbusuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15),
login varchar(15) not null unique,
senha varchar(15) not null
);
-- o comando abaixo descreve a tabela
describe tbusuarios;

-- a linha abaixo insere dados na tabela (CRUD) create, read, update e delete
-- create -> insert
insert into tbusuarios(iduser,usuario,fone,login,senha)
values(1,'Marcos alves','999999999','marcosalves','123456');

insert into tbusuarios(iduser,usuario,fone,login,senha)
values(2,'administrador','999999999','admin','admin');

insert into tbusuarios(iduser,usuario,fone,login,senha)
values(3,'bill gates','999999999','bill','123456');

-- a linha abaixo exibe os dados da tabela (crud)
-- read -> select
select * from tbusuarios;

-- a linha abaixo modifica dados da tabela (crud)
-- update -> update

update tbusuarios set fone='888888888' where iduser=2;

-- a linha abaixo apaga um registro da tabela (crud)
-- delete -> delete
delete from tbusuarios where iduser=3;
