use atividade;
cREATE TABLE cliente (
	idcli INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    telfixo CHAR(10),
    telcel CHAR(11),
    endereco VARCHAR(45)
);
CREATE TABLE pet (
	idpet INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(45),
    nome VARCHAR(45),
    raca VARCHAR(45),
    dtnasc DATE,
    fkcli INT,
    FOREIGN KEY (fkcli) REFERENCES cliente(idcli)
)AUTO_INCREMENT=100;

INSERT INTO cliente (nome, telfixo, telcel, endereco) VALUES
	('josé mota', '1144265594', '11999341999', 'Guarulhos'),
	('julia castro', '1114565594', null, 'sao caetano'),
    ('maguilinha', null, '11987652534', 'val paraiso'),
    ('wesley', null, '1129398768', 'osasco');
    iNSERT INTO pet (tipo, nome, raca, dtNasc, fkcli) VALUES
	('cachorro', 'rex', 'rottweiler', '2021-02-09', 1),
    ('cachorro', 'antedeguemon', 'shitzu', '2021-09-12', 2),
    ('gato', 'raj', 'chartroux', '2022-06-12', 3),
    ('arara', 'foster', 'verde', '2022-03-01', 4);
    SELECT * FROM cliente;
SELECT * FROM pet;

ALTER TABLE cliente MODIFY COLUMN nome VARCHAR(50);

SELECT * FROM pet WHERE tipo = 'cachorro';

SELECT nome, dtnasc FROM pet;

SELECT * FROM pet ORDER BY nome ASC;

SELECT * FROM cliente ORDER BY endereco DESC;

SELECT * FROM pet WHERE nome like 'r%';

SELECT * FROM cliente WHERE nome like '% mota';

UPDATE cliente SET telfixo = '1199996666' WHERE idcli = 2;

SELECT * FROM cliente;

SELECT * FROM cliente JOIN pet ON fkcli = idcli;

SELECT * FROM cliente JOIN pet ON fkcli = idcli WHERE idcli = 2;

DELETE FROM pet WHERE idPet = 103;

SELECT * FROM pet;

DROP TABLE pet;
DROP TABLE cliente;
-- exercício 2 -- 

CREATE DATABASE familia;
USE familia;

CREATE TABLE pessoa (
	idpes INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    dtnasc DATE,
    profissao VARCHAR(45)
);

CREATE TABLE gasto (
	idgas INT PRIMARY KEY AUTO_INCREMENT,
    dtgas DATE,
    valor DECIMAL(10.2),
    descricao VARCHAR(45),
    fkpes INT,
    FOREIGN KEY (fkpes) REFERENCES pessoa(idpes)
);

INSERT INTO pessoa (nome, dtNasc, profissao) VALUES
	('julia', '2005-02-19', 'programadora'),
	('josé', '1999-12-23', 'programador'),
	('kauan', '2001-10-09', 'empresario'),
	('oliveira', '1998-09-20', 'designer');

INSERT INTO gasto (dtgas, valor, descricao, fkpes) VALUES
	('2022-04-01', '134.23', 'agua', 2),
	('2022-05-02', '947.23', 'luz', 1),
	('2022-05-03', '2400.50', 'aluguel', 1),
	('2022-05-04', '1250.00', 'escola', 2),
	('2022-05-05', '123.00', 'café', 3),
	('2022-05-06', '492.00', 'mercado', 2),
	('2022-05-07', '293.00', 'tel', 3),
	('2022-05-08', '923.23', 'tel', 1),
	('2022-05-09', '123.00', 'int', 2),
	('2022-05-10', '212.99', 'int', 4),
	('2022-05-23', '293.99', 'gas', 4);
SELECT * FROM gasto;

SELECT * FROM pessoa;

SELECT profissao FROM pessoa;
SELECT descricao FROM gasto;

SELECT gasto.descricao, pessoa.nome FROM gasto JOIN pessoa ON fkpes = idpes;

SELECT gasto.descricao, pessoa.nome FROM gasto JOIN pessoa ON fkpes = idpes WHERE idpes = 1;

DELETE FROM gasto WHERE idgas = 2;
DELETE FROM gasto WHERE idgas= 4;
DELETE FROM gasto WHERE idgas = 1;

-- exercicio 3 -- 

CREATE DATABASE PraticaFuncionario;
USE PraticaFuncionario;

CREATE TABLE setor (
	idset INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    numand INT
);

CREATE TABLE funcionario (
	idfunc INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    salario VARCHAR(45), CONSTRAINT chkSalario CHECK (salario > 0),
    telefone CHAR(11),
    fkset INT,
    FOREIGN KEY (fkset) REFERENCES setor(idset)
);

CREATE TABLE acompanhante (
	idacom INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    relacao VARCHAR(45),
    dtnasc DATE,
    fkfunc INT,
    FOREIGN KEY (fkfunc) REFERENCES funcionario(idfunc)
);

INSERT INTO setor (nome, numand) VALUES
	('limpeza', 2),
	('contabilidade', 2),
	('tecnologia', 3),
	('marketing', 3);

INSERT INTO funcionario (nome, salario, telefone, fkset) VALUES
	('jose', '666', '11999341999', 1),
	('julia', '8888', '11981237689', 1),
	('antedeguemon', '55555', '11998652387', 3),
	('kauan', '1242', '11976542938', 4),
	('oliveira', '52352', '11998277863', 2);

INSERT INTO acompanhante (nome, relacao, dtnasc, fkfunc) VALUES
	('joao', 'irmão', '2014-09-12', '1'),
	('joseJR', 'irmão', '1998-12-14', '2'),
	('antedeguemonJR', 'irmão', '1999-09-09', '3'),
	('andre', 'sobrinho', '2013-03-15', '4'),
	('luiz', 'irmão', '2007-05-15', '5');
    
SELECT * FROM setor;
SELECT * FROM funcionario;
SELECT * FROM acompanhante;

SELECT * FROM setor JOIN funcionario ON fkset = idset;

SELECT * FROM setor JOIN funcionario ON fkset = idset WHERE setor.nome = 'limpeza';

SELECT * FROM funcionario JOIN acompanhante ON fkfunc = idfunc WHERE idfunc = 1;

SELECT * FROM funcionario JOIN acompanhante ON fkfunc = idfunc;

-- Exercicio 04
CREATE DATABASE treinador;

USE treinador;

CREATE TABLE treinador (
	idtrei INT PRIMARY KEY AUTO_INCREMENT,
    fkexp INT,
    nome VARCHAR(45),
    tel CHAR(11),
    email VARCHAR(45),
    FOREIGN KEY (fkexp) REFERENCES treinador(idtrei)
)AUTO_INCREMENT=10;

CREATE TABLE nadador (
	idnad INT AUTO_INCREMENT,
    nome VARCHAR(45),
    estado VARCHAR(45),
    dtnasc DATE,
    fktrei INT,
    FOREIGN KEY (fktrei) REFERENCES treinador(idtrei),
    PRIMARY KEY (idnad, fktrei)
)AUTO_INCREMENT=100;

INSERT INTO treinador (fkexp, nome, tel, email) VALUES
	(11, 'josé', '11999341999', 'jose.mota@sptech.school'),
	(14, 'julia', '11912346765', 'akskjdjdls@sptech.school'),
	(15, 'antedeguemon', '11966666666', 'antedeguemon@sptech.school'),
	(16, 'kauan', '11998761267', 'kauan.chave@sptech.school'),
	(17, 'joao', '11912399009', 'joao.ant@sptech.school'),
	(11, 'asdasdlkm', '11900090010', 'alksdk.sadlkak@sptech.school');
    
INSERT INTO nadador (nome, estado, dtnasc, fktrei) VALUES
	('joao', 'SP', '2001-09-20', 12),
	('oliveira', 'SP', '2001-09-21', 13),
	('kauan', 'SP', '2001-09-22', 14),
	('eric', 'RJ', '2001-09-23', 15),
	('bruno', 'PR', '24', 10),
	('antedeguemon', 'RJ', '2001-09-25', 11),
	('jose', 'SP', '2001-09-26', 12);

SELECT * FROM treinador;
SELECT * FROM nadador;

SELECT * FROM treinador JOIN nadador ON fktrei = idtrei;

SELECT * FROM treinador JOIN nadador ON fktrei = idtrei WHERE treinador.nome = 'josé';

SELECT * FROM treinador WHERE treinador.nome = 'josé';