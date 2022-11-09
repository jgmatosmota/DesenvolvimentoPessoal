create database projetoPessoal;
use projetoPessoal;
CREATE TABLE usuario (
  idusuario INT AUTO_INCREMENT PRIMARY KEY,
  nomeUsuario VARCHAR(45) ,
  senhaUsuario VARCHAR(45) ,
  emailUsuario VARCHAR(45) ,
  fkJogo INT);
  
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
ALTER TABLE usuario 
ADD FOREIGN KEY (fkJogo) REFERENCES jogo(idJogo);
ALTER TABLE jogo  ADD FOREIGN KEY (fkDecisao) REFERENCES decisao(idDecisao);