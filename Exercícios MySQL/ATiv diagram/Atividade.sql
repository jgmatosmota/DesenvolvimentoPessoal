create database sprint2;
use sprint2;
create table atleta (idatleta int primary key, nome varchar(40), modalidade varchar(40), qtdmedalhas int);
select * from atleta;
insert into atleta values ('1', 'alexandre', 'atletismo', '4');
insert into atleta values ('2', 'ednaldo', 'atletismo', '2'), ('3', 'luiz','corrida','4'), ('4', 'gustavo', 'corrida', '1'), ('5', 'antedeguemon', 'corrida', '7');
insert into atleta values ('6', 'pericles', 'atletismo', '4'), ('7', 'yago', 'natação', '5');
insert into atleta values ('8', 'henrique', ' natação', '3');
insert into atleta values ('9', 'victor', 'natação', '4');
select * from atleta;
create table pais (idpais int auto_increment primary key,nome varchar(40), capital varchar(50));
insert into pais (nome, capital) values ("brasil", "brasilia"), ("Russia", "moscow"), ("Argentina", "Buenos Aires"),("Coreia do sul", "seoul");
alter table atleta add column fkpais int;
alter table atleta add foreign key (fkpais) references pais (idpais);
update atleta set fkpais = 1 where idatleta = 1;
select * from atleta;
update atleta set fkpais = 3 where idatleta = 2;
update atleta set fkpais = 2 where idatleta = 3;
update atleta set fkpais = 1 where idatleta = 4;
update atleta set fkpais = 4 where idatleta = 5;
update atleta set fkpais = 1 where idatleta = 6;
update atleta set fkpais = 4 where idatleta = 7;
select * from atleta;
update atleta set fkpais = 3 where idatleta = 8;
update atleta set fkpais = 1 where idatleta = 9;
select * from atleta join pais on idpais= fkpais;
select atleta.nome, pais.nome from atleta join pais on idpais=fkpais;
select * from atleta join pais on idpais = fkpais where capital = "seoul";

-- EXERCÍCIO 2 --

create table musica (idmusica int primary key, titulo varchar(40), artista varchar(40), genero varchar(40));


insert into musica values ('1', 'empty words','death','death metal');
insert into musica values ('2','spirit crusher','death','death metal'), ('3','to forgive is to suffer','death','death metal'), ('4','left behind','slipknot','numetal'), ('5','spit it out','slipknot','numetal'),('6','ganja smuggling','eek-a-mouse','reggae'),('7','herbalist','alborosie','reggae'),('8','bun di ganja','chezidek','reggae'),('9','da ponto pra cá','racionais MCs','rap');

create table album(
ìdalbum int auto_increment primary key, nome varchar(45), tipo varchar(45), constraint chktipo check (tipo in("fisico","digital")), dtlancamento date);

insert into album values
(null, "symbolic", "digital","1999-09-20"),
(null, "reaggaeraiz", "fisico","1986-09-20");

select * from album;
select * from musica;
ALTEr table musica add column fkalbum int;
alter table musica add foreign key (fkalbum) references album (ìdalbum);
update musica set fkalbum = 2 where idmusica = 1;
update musica set fkalbum = 2 where idmusica = 2;
update musica set fkalbum = 1 where idmusica = 3;
update musica set fkalbum = 1 where idmusica = 4;
update musica set fkalbum = 2 where idmusica = 5;
select * from musica;
update musica set fkalbum = 2 where idmusica = 6;
update musica set fkalbum = 1 where idmusica = 7;
update musica set fkalbum = 2 where idmusica = 8;
update musica set fkalbum = 2 where idmusica = 9;
select * from musica join album on ìdalbum = fkalbum;
select musica.titulo, album.nome from musica join album on ìdalbum = fkalbum;
select * from musica join album on ìdalbum = fkalbum where nome = "symbolic";
use sprint2;
create table funcionário (
idfunc int auto_increment primary key, nome varchar(45), sobrenome varchar(45), telfixo char(11),telcel char (12), ddd char(2), prefixo char(5), sufixo char(4)
);
insert into funcionário (nome, telcel) values ('antedeguemon','119993491999');
insert into funcionário (sobrenome, ddd, prefixo, sufixo) values ('Souza','11','66666','9999');
select * from funcionário; 
update funcionário set nome = 'paulo', sobrenome = 'tejando' where idfunc = 2;
select * from funcionário;
select concat('Meu nome completo é',nome, '', sobrenome) as completo from funcionário;
select concat('meu nome completo é', ifnull(nome, ''), '', ifnull(sobrenome, 'B=====================D')) as completo from funcionário;