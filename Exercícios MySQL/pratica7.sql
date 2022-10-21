create database ativ;
use ativ;
CREATE TABLE alunos (
    RA CHAR(6) PRIMARY KEY,
    nome VARCHAR(45),
    telefone VARCHAR(45),
    fkproj INT,
    FOREIGN KEY (fkproj)
        REFERENCES projetos (idproj),
    fksuper CHAR(6),
    FOREIGN KEY (fksuper)
        REFERENCES alunos (RA)
);

CREATE TABLE projetos (
    idproj INT PRIMARY KEY,
    nome VARCHAR(45),
    descricao VARCHAR(45)
);

CREATE TABLE acompanhante (
    idacom INT,
    nome VARCHAR(45),
    relacao VARCHAR(45),
    fkalu CHAR(6),
    FOREIGN KEY (fkalu)
        REFERENCES alunos (RA),
    PRIMARY KEY (idacom , fkalu)
);
insert into alunos values ('012221','antedeguemon','11923459876',null,null),
('012222','ratinho','11987634563',null,null),
('012223','binho','11967852834',null,null),('012224','kanaiama','11923874593',null,null);
insert into projetos values('1','Implementação','Implementação de BD'),
('2','Desenvolvimento','Dev de app web em JS');
insert into acompanhante values (1,'antedeguemonjr','filho','012221'),
(2,'Liminha','irmão','012222'),(3,'chumbinho','pai','012223'),(4,'luiza','irmã','012224');
select * from alunos;
select * from projetos;
select * from acompanhante;
update alunos set fksuper = '012224', fkproj = 1 where RA = '012221';
update alunos set fksuper = '012224', fkproj = 2 where RA = '012222';
update alunos set fksuper = '012224', fkproj = 1 where RA = '012223';
update alunos set fkproj = 2 where RA = '012224'; 
select * from alunos join projetos on idproj = fkproj;
select * from alunos join acompanhante on RA = fkalu;
select * from alunos join projetos on idproj = fkproj where idproj = 1;
select * from alunos join acompanhante on RA = fkalu join projetos
on idproj = fkproj;

-- exercício 2--

create database campanha;
use campanha;

create table organizador (
idorg int primary key auto_increment,
fkexp int,
nome varchar(45),
rua varchar(45),
bairro varchar(45),
email varchar(45),
foreign key (fkexp) 
references organizador(idorg)
)auto_increment=30;

create table campanha (
idcamp int auto_increment,
fkorg int,
categoria varchar(70),
instituicao1 varchar(45),
instituicao2 varchar(50),
foreign key campanha(fkorg) references organizador(idorg),
primary key(idcamp, fkorg) 
)auto_increment=500;

insert into organizador values
(null,null,'antedeguemon','rua das monções','vila floresta','antedeguemon666@gmail.com'),
(null,null,'binho','rua gemeos','vila lilica','binho@gmail.com'),
(null,null,'kanaiama','rua liberdade','santa barbara','kanaiama@gmail.com')
;
insert into campanha values(
null,30,'mascara','por do sol', null),
(null,31,'alcool gel','OncOrg', null),
(null,32,'vacina','Vaxclean', 'hospital brasil'),
(null,30,'alcool gel','hospital brasil', null);
 
 update organizador set fkexp = 32 where idorg = 30;
 update organizador set fkexp = 32 where idorg = 31;
 select * from campanha;
 select * from organizador;
 select * from organizador join campanha on idorg = fkorg;
select * from organizador as org join campanha on idorg = fkorg where org.nome = 'antedeguemon';
select o.*, e.nome from organizador as o join organizador as e on e.idorg = o.fkexp;
select o.*, c.categoria, e.nome from organizador as o join campanha as c on c.fkorg = o.idorg
join organizador as e on e.idorg = o.fkexp where e.nome = 'kanaiama';
select o.*, c.categoria, e.nome from organizador as o join campanha as c on c.fkorg = o.idorg
join organizador as e on e.idorg = o.fkexp;
 select o.*, c.categoria, e.nome from organizador as o join campanha as c on c.fkorg = o.idorg
join organizador as e on e.idorg = o.fkexp where o.nome = 'binho';