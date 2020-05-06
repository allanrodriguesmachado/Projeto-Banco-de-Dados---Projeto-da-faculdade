create database aula_3103; 

 

use aula_3103; 

 

/* Questão 1 resposta */ 

 

create table Cliente( 

cli_id int not null auto_increment, 

cli_nome varchar(60), 

cli_fone int(9), 

salario float(6,2), 

primary key(cli_id) 

); 

 

create table Dependente( 

dep_id int not null auto_increment, 

dep_nome varchar(60), 

dep_fone int (9), 

cli_id int, 

primary key(dep_id) 

); 

 

/* Tabela cliente */ 

 

insert into Cliente 

values (01,'Renato Cordeiro','29879087',2137.98); 

insert into Cliente 

values (02,'Beatriz Oliveira','98759786',509.78); 

insert into Cliente 

values (03,'Roberto Villares','96573562',3324.53); 

insert into Cliente 

values (04,'Vagner Dias','78548355',1000.98);  

 

/* Tabela dependete */ 

insert into Dependente 

values (101,'Ricardo Oliveira', null ,02); 

insert into Dependente 

values (102,'Bruno Oliveira', null ,02); 

insert into Dependente 

values (103,'Jane Villares', null ,03); 

 

 

select cli_nome from Cliente; 

 

select dep_nome, cli_id from Dependente; 

 

select * from cliente; 

 

select cli_nome from cliente 

where salario > 2000; 

 

/*  select distinct atributo	 

from tabalea;  */ 

 

select distinct cli_id	 

from dependente; 

 

/* Operador Between */ 

 

select * from cliente 

where salario between 1000 and 3000; 

 

/* Operador Not Between*/ 

 

select * from cliente 

 where salario not between 1000 and 3000; 

  

 /* Operador IN*/ 

  

 select * from cliente  

 where salario IN(2137,3324); 

  

 describe cliente; 

  

 /* Operador not IN*/ 

  

 select * from cliente 

 where salario not in(2137.98, 3324.53); 

  

 /*Clausula As*/ 

  

 Select cli_nome, cli_fone 

 from cliente; 

  

 Select cli_nome as cliente,cli_fone 

 from cliente; 

  

 /*Operador de String */ 

  

 select cli_nome 

 from cliente 

 where cli_nome like 'R%'; 

  

 select cli_nome 

 from cliente 

 where cli_nome not like 'R%'; 

  

 select cli_nome 

 from cliente 

 where cli_nome like '%at%'; 

  

 select cli_nome 

 from cliente 

 where cli_nome not like '%at%'; 

  

 /* Consulta entre duas ou mais tabelas*/ 

  

 select * from cliente, dependente; 

  

 select * from cliente, dependente 

 where cliente.cli_id = dependente.cli_id;