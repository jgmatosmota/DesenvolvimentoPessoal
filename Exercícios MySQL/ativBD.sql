create database atividade;
use atividade;
create table professor (idprof int auto_increment primary key,nome varchar(50),sobrenome varchar(50),especialidade1 varchar(50),especialidade2 varchar(50));
insert into professor (nome, sobrenome, especialidade1, especialidade2) values ('Rogerio','chola','monstro','engenheiro'),
('vivian','silva','sql','legal'),('fernanda','caramico','css','projetos'),('yoshi','mario','algoritimo','javascript'),
('monica','herrero','TI','teoria'),('joão','paulo','algoritimo','diadatico');
CREATE TABLE disciplina (
    iddisc INT AUTO_INCREMENT PRIMARY KEY,
    nomedisc VARCHAR(50), fkprof int, foreign key (fkprof)
	references professor(idprof));
    insert into disciplina (nomedisc) values ('algoritimo'), ('TI'),('Banco de dados');
    select * from professor;
    select * from disciplina;
    insert into disciplina (fkprof) values (1),(2),(3);
    select * from disciplina;
    alter table disciplina drop foreign key disciplina_ibfk_1;
    drop table professor;
    drop table disciplina;
    create table professor (idprof int auto_increment primary key,nome varchar(50),sobrenome varchar(50),especialidade1 varchar(50),especialidade2 varchar(50));
insert into professor (nome, sobrenome, especialidade1, especialidade2) values ('Rogerio','chola','monstro','engenheiro'),
('vivian','silva','sql','legal'),('fernanda','caramico','css','projetos'),('yoshi','mario','algoritimo','javascript'),
('monica','herrero','TI','teoria'),('joão','paulo','algoritimo','diadatico');
CREATE TABLE disciplina (
    iddisc INT AUTO_INCREMENT PRIMARY KEY,
    nomedisc VARCHAR(50), fkprof int, foreign key (fkprof)
	references professor(idprof));
    select * from disciplina;
    insert into disciplina (nomedisc) values ('algoritimo'), ('TI'),('Banco de dados');
    select * from disciplina;
    update disciplina set fkprof = 1 where iddisc= 1;
    update disciplina set fkprof = 2 where iddisc= 2;
    update disciplina set fkprof = 3 where iddisc= 3;
    select * from professor join disciplina on idprof = fkprof ;
    select professor.nome , disciplina.nomedisc from professor join disciplina on idprof = fkprof;
    select * from professor join disciplina on idprof=fkprof where sobrenome = 'caramico';
    select professor.especialidade1, disciplina.nomedisc from professor join disciplina on idprof=fkprof order by especialidade1;
    
    -- EXERCÍCIO 2 --
    
    create table curso (idcurso int auto_increment primary key, sigla varchar(3), coordenador varchar(50) );
    insert into curso (sigla, coordenador) values ('ADS','gerson'),('CCO','tamires'),('SIS','antedeguemon');
    CREATE TABLE alunos (
    idaluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    fkcurso INT,
    FOREIGN KEY (fkcurso)
        REFERENCES curso (idcurso)
);
insert into alunos(nome) values ('joão'),('maria'),('antedeguemon');
select * from alunos;
insert into alunos(nome) values ('chapolin'),('etdevarginha'),('antedeguemoninvertido');
update alunos set fkcurso = 1 where idaluno = 1;
update alunos set fkcurso = 2 where idaluno = 2;
update alunos set fkcurso = 3 where idaluno = 3;
update alunos set fkcurso = 1 where idaluno = 4;
update alunos set fkcurso = 1 where idaluno = 5;
update alunos set fkcurso = 1 where idaluno = 1;
SELECT 
    *
FROM
    alunos;    
    select * from curso join alunos on idcurso = fkcurso ;
      select * from curso join alunos on idcurso=fkcurso where sigla = 'ADS';
      
    