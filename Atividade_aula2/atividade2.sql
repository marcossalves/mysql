/*@author Marcos Severino Alves
*/
create table tbcontatos(  
id int primary key,      
nome varchar (50) not null, 
fone varchar (15) not null,
email varchar (50) 
);
show tables; /* exibe o nome da tabela criada*/
describe tbcontatos; /*descrição tabela contatos*/


insert into tbcontatos (id,nome,fone,email) 
values (1,'Et Bilu','11 111111111', 'etbilu@gmail.com');

insert into tbcontatos (id,nome,fone,email) 
values (2,'Bart','11 222222222', 'bart@gmail.com'); 

insert into tbcontatos (id,nome,fone,email) 
values (3,'Marcos','11 333333333', 'marcos@gmail.com'); 

select * from tbcontatos where id = 1;
select * from tbcontatos where id = 2;
select * from tbcontatos where id = 3;


update tbcontatos set nome=' Et bilú' where id= 1;
update tbcontatos set nome=' Bartolomeu' where id= 2;
update tbcontatos set nome=' Marcos salves' where id= 3;
select * from tbcontatos;

delete from tbcontatos where id = 1;
delete from tbcontatos where id = 2;
delete from tbcontatos where id = 3;
select * from tbcontatos;