/*@author Marcos Severino Alves
*/

create database lojinha;
use lojinha;

-- drop database lojinha;

create table tbclientes(
	idcli int primary key auto_increment,
    nome varchar(50) not null,
    fone varchar(15) not null,
    cpf varchar (11) not null
);

describe tbclientes;

insert into tbclientes (nome,fone,cpf)
value ('Edmundo','11 11111111','00100600121');

insert into tbclientes (nome,fone,cpf)
value ('Maria','11 22221111','00200600157');

insert into tbclientes (nome,fone,cpf)
value ('Danilo','11 66661111','00400600167');

select * from tbclientes;


create table tbprodutos(
	idpro int primary key auto_increment,
    produto varchar(50) not null,
    valor decimal(10,2) not null,
    quantidade int not null
);

describe tbprodutos;

insert into tbprodutos(produto,valor,quantidade)
values('TV Samsung Q60r 50 polegadas',2700.00,1);

insert into tbprodutos(produto,valor,quantidade)
values('TV LG UM7500 50 polegadas',2000.00,1);

insert into tbprodutos(produto,valor,quantidade)
values('TV Panassonic 50 polegadas',1400.00,1);

select * from tbprodutos;

/* Criando uma tabela de associação entre alunos e cursos (N:N) */
create table tbpedidos(
	idpedido int primary key auto_increment,
    dataos timestamp default current_timestamp,
    idcli int not null,
    idpro int not null,
    foreign key(idcli) references tbclientes(idcli),
    foreign key(idpro) references tbprodutos(idpro)
);

describe tbpedidos;


insert into tbpedidos(idcli,idpro) values (1,1);
insert into tbpedidos(idcli,idpro) values (2,2);
insert into tbpedidos(idcli,idpro) values (3,3);



select * from tbpedidos;

select * from tbpedidos
inner join tbclientes
on tbpedidos.idcli = tbclientes.idcli
inner join tbprodutos
on tbpedidos.idpro = tbprodutos.idpro;


select
I.idpedido as Número_do_pedido,
N.nome as Nome_do_cliente,
P.produto as Descrição_do_produto,valor as Preço,quantidade as Quantidade


from tbpedidos as I

-- (inner join) = junção interna
inner join tbclientes as N
on (I.idcli = N.idcli)

inner join tbprodutos as P
on (I.idpro = P.idpro);

select sum(valor) as Total from tbprodutos;