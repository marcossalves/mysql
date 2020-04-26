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
-- delete from tbusuarios where iduser=3;


--  --------------------------   Passo 2 - Criação da tabela de Clientes  -------------------------

create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar (50) not null,
endcli varchar(100),
cidadecli varchar (50) not null,
estadocli varchar (50) not null,
cepcli varchar   (50) not null,
fonecli varchar(50) not null,
emailcli varchar (50)
);
describe tbclientes;

insert into tbcliente(nomecli,endcli,cidadecli,estadocli,cepcli,fonecli,emailcli)
values('marcos alves','Rua do pinguim','São Paulo','São Paulo','02000000','11-999999999','marco@gmail.com');

insert into tbcliente(nomecli,endcli,cidadecli,estadocli,cepcli,fonecli,emailcli)
values('administrador','Rua da empresa','Guarulhos','São Paulo','02000000','11-888888888','marco@gmail.com');

insert into tbcliente(nomecli,endcli,cidadecli,estadocli,cepcli,fonecli,emailcli)
values('bill gates','Rua da Janela','São Paulo','São Paulo','05000000','11-666666666','marco@gmail.com');
select * from tbclientes;

-- --------------------------- Passo 3 - Criação da tabela ordem de serviço  -----------------------

use dbinfox;
create table tbos(
os int primary key auto_increment,
data_os timestamp default current_timestamp,
equipamento varchar(150) not null,
defeito varchar (150) not null,
servico varchar (150),
tecnico varchar (150),
valor decimal (10,2),
idcli int not null,
foreign key(idcli) references tbclientes(idcli)
);
describe tbos;

insert into tbos (equipamento,defeito,servico,tecnico,valor,idcli)
values ('Notebook','Não Liga','Troca da fonte','Zé',87.50,1);

select * from tbos;

-- código abaixo traz informações de duas tabelas

select 
O.os,equipamento,defeito,servico,valor,
C.nomecli,fonecli
from tbos as O
inner join tbclientes as C
on (O.idcli = C.idcli);


