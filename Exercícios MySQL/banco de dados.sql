create database farm;
use farm;
create table setor (setores varchar(2) primary key ,andar int, sala varchar(50));
select * from setor;

insert into setor values ('A', 2, 'Sala 2A');

create table registros (id int auto_increment primary key, 
temperatura decimal(5,2), 
luminosidade decimal(10,2),
umidade decimal(10,2),
Data_e_Hora datetime);
insert into registros 
(temperatura, luminosidade, umidade, data_e_hora) 
values (34,3000,5000,'2022-02-23 23:04:35');
select * from registros;

create table medicamentos ( id int auto_increment primary key, Nome varchar(50), Lote varchar(50), Entrada Datetime, Saida Datetime);

