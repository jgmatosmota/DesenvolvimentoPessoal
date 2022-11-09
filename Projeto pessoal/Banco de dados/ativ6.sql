create database organizacao;

use organizacao;

create table grupo(
idGrupo int primary key auto_increment,
nomegrupo varchar(45),
descricao varchar(45)
);

create table aluno (
raAluno int,
nome varchar(45),
email varchar(45),
fkGrupo int,
primary key (raAluno,fkGrupo),
foreign key (fkGrupo) references grupo(idGrupo)
);

create table professor(
idProfessor int primary key auto_increment,
nomeProfessor varchar(45),
disciplina varchar(45)
)auto_increment = 10000;

create table avaliacao(
DataeHora datetime,
nota double,
fkGrupo int,
fkProfessor int,
foreign key (fkGrupo) references grupo(idGrupo),
foreign key (fkProfessor) references professor(idProfessor)
);


insert into aluno values
('99999999','matheus','matheus@sptech.school','2'),
('88888888','jack frost','jack frost@sptech.school','2'),
('77777777','antedeguemon','antedeguemon@sptech.school','2'),
('66666666','wesley','wesley@sptech.school','2'),
('55555555','berti','berti@sptech.school','1');

insert into grupo values
(null,'oncorg','medicamentos oncoologicos'),
(null,'termolab','monitoramento de medicamentos termogenicos');

insert into professor values
(null,'JP','algoritimo'),
(null,'Paulo','Banco de dados');

insert into avaliacao values
('2020-09-09 23:45:34','6','1','10000'),
('2022-09-08 10:23:23','6','2','10001');

select * from grupo;
select * from professor;
select * from Aluno;
select * from avaliacao;

select * from grupo join aluno on idGrupo = fkGrupo;

select * from grupo join aluno on idGrupo = fkGrupo where nomegrupo = 'oncorg';

select avg(nota) from avaliacao;

select max(nota), min(nota)from avaliacao; 

select sum(nota) from avaliacao;

select * from professor join avaliacao on idProfessor = fkProfessor join grupo on idGrupo = fkGrupo;

select * from professor join avaliacao on idProfessor = fkProfessor join grupo on idGrupo = fkGrupo where nomegrupo = 'oncorg';

select * from professor join avaliacao on idProfessor = fkProfessor join grupo on idGrupo = fkGrupo where nomeProfessor = 'JP';

select g.*,a.*,p.*,ac.dataehora from grupo as g join aluno as a on g.idGrupo = a.fkGrupo join avaliacao as ac on ac.fkGrupo = g.idGrupo join professor as p on p.idProfessor = ac.fkProfessor;

select count(distinct nota) from avaliacao;

select p.nomeprofessor,avg(nota),sum(nota) from avaliacao as ac join professor as p on ac.fkProfessor = p.idProfessor group by nomeprofessor;

select g.nomegrupo,avg(nota),sum(nota) from avaliacao as ac join grupo as g on ac.fkGrupo = g.idGrupo group by nomegrupo;

select p.nomeprofessor,min(nota),max(nota) from avaliacao as ac join professor as p on ac.fkProfessor = p.idProfessor group by nomeprofessor;

select g.nomegrupo,min(nota),max(nota) from avaliacao as ac join grupo as g on ac.fkGrupo = g.idGrupo group by nomegrupo;
