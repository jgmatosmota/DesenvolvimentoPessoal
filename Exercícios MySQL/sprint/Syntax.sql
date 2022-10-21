create database oncorg;
use oncorg;
create table remedios (idremedios int auto_increment primary key
, nome varchar(50), validade DATE, entrada Datetime, saida datetime
);
create table sensores (idsensores int auto_increment primary key
,tiposensor varchar(40),
unidademedida decimal(14.2));
create table setores (idsetor INT auto_increment primary key, 
andar INT, sala varchar(45));
