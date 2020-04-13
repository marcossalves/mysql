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

create table tbcliente(
idcli int primary key auto_increment,
nomecli varchar (50) not null,
endcli varchar(100),
cidadecli varchar (50) not null,
estadocli varchar (50) not null,
cepcli varchar   (50) not null,
fonecli varchar(50) not null,
emailcli varchar (50)
);
describe tbcliente;
insert into tbcliente(nomecli,endcli,cidadecli,estadocli,cepcli,fonecli,emailcli)
values('joao','Rua do pinguim','São Paulo','São Paulo','02000000','11-999999999','joao@gmail.com');

insert into tbcliente(nomecli,endcli,cidadecli,estadocli,cepcli,fonecli,emailcli)
values('maria','Rua da empresa','Guarulhos','São Paulo','02000000','11-888888888','maria@gmail.com');

insert into tbcliente(nomecli,endcli,cidadecli,estadocli,cepcli,fonecli,emailcli)
values('jose','Rua da Janela','São Paulo','São Paulo','05000000','11-666666666','jose@gmail.com');
select * from tbcliente;

