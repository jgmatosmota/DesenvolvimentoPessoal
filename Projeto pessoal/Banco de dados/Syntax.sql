create database projetoPessoal;
use projetoPessoal;
CREATE TABLE usuario (
  idusuario INT AUTO_INCREMENT PRIMARY KEY,
  nomeUsuario VARCHAR(45) ,
  senhaUsuario VARCHAR(45) ,
  emailUsuario VARCHAR(45) ,
  fkClasse int,
  fkJogo INT,
  foreign key (fkClasse) references classe(idClasse),
  foreign key (fkJogo) references jogo(idJogo));
    select * from classe;
insert into classe values(1,'ladino',null),(2,'guerreiro',null),(3,'mago',null);
  alter table usuario modify column senhaUsuario VARCHAR(65);
  alter table usuario add column classe varchar(20);
  alter table usuario add column nomePersonagem varchar(45);
  ALTER TABLE usuario 
ADD FOREIGN KEY (classe) REFERENCES classe(idClasse);

ALTER TABLE usuario DROP COLUMN nomePersonagem;
create table classe (
idClasse int primary key, 
nomeClasse varchar(45),
fkImg varchar(45)
);

  create table jogo (
idJogo int auto_increment primary key,
resposta1 varchar(45),
resposta2 varchar(45),
resposta3 varchar(45),
resposta4 varchar(45),
resposta5 varchar(45),
fkDecisao INT
  );
  
  create table decisao (
  idDecisao int auto_increment primary key,
  resultado varchar(45)
  );
  insert into decisao values (null, 'Viajar'),(null, 'ficar');
  select * from decisao;
select * from usuario;
use projetoPessoal;
insert into jogo values (1,1,1,1,1,1,1);
select * from classe;
select * from decisao;
select COUNT(fkClasse) as 'ClasseEscolhida', nomeClasse  from usuario  join classe on fkClasse = idClasse group by fkClasse order by fkClasse desc limit 1;
select COUNT(fkJogo) as 'FinalEscolhido', resultado  from usuario  join decisao on fkJogo = idDecisao group by resultado order by resultado desc limit 1;
, COUNT(fkJogo) as 'FinalEscolhido' 
select length(sha2('${senha}', 256));

desc usuario;