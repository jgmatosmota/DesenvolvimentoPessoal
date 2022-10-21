create database sprint2;
use sprint2;

create table cliente (
idCliente int primary key auto_increment,
nome varchar (45),
responsavel varchar (45),
email varchar (45),
senha varchar (45),
telefone char (12),
CNPJ char (14),
logradouro varchar (100),
complemento varchar (45),
bairro varchar (45),
cidade varchar (45),
estado varchar (45),
CEP char (9),
tipoUsuario varchar (45),
fkMatriz int,
foreign key (fkMatriz) references Cliente(idCliente)
)auto_increment = 100;

create table setor (
idSetor int,
andar int,
sala varchar (45),
tempMediaSetor double,
fkCliente int,
foreign key (fkCliente) references Cliente(idCliente),
primary key (idSetor, fkCliente)
);

create table sensor (
idSensor int primary key auto_increment,
numeroSerie int,
fkSetor int,
foreign key (fkSetor) references setor(idSetor)
);

create table metrica (
idMetrica int primary key auto_increment,
temperatura double,
umidade double,
dataHora datetime,
fkSensor int,
foreign key (fkSensor) references sensor (idSensor)
);

create table medicamento (
idMedicamento int primary key auto_increment,
categoria varchar (45),
descricao varchar (45),
tempMediaCongelado double,
tempMediaDescongelado double
)auto_increment = 500;

create table lote (
fkSetor int,
fkCliente int,
fkMedicamento int,
validade date,
entradaMed date,
saidaMed date,
lote int,
foreign key (fkSetor, fkCliente) references setor (idSetor, fkCliente),
foreign key (fkMedicamento) references medicamento (idMedicamento),
primary key (lote, fkSetor, fkCliente, fkMedicamento)
);

insert into cliente values
(null, 'Hospital São Paulo', 'Carlos', 'comercial@hospitalsp.com', 'SaoPauloHP', '1140035555', '64275568000106', 'Rua Laranja', '08390300', 'Nº1450', 'Santo Amaro', 'São Paulo', 'SP', 'gerente', null);

insert into setor values
(1, 4, 'Armazem', -50.00, 100),
(2, 2, 'Sala 103', -10.00, 100),
(3, 1, 'Sala 52', -40.00, 100);

insert into sensor values
(null, 22103010, 1),
(null, 22103011, 2),
(null, 22103012, 3),
(null, 22302100, 1),
(null, 22302101, 2),
(null, 22302102, 3);

insert into metrica values
(null, -49.33, 10.00, '2022-10-18 20:15:00', 1),
(null, -9.52, 9.81,  '2022-10-17 20:15:00', 2),
(null, -38.21, 10.21, '2022-10-18 20:15:00', 3),
(null, -49.94, 10.03, '2022-10-17 20:30:00', 1),
(null, -9.78, 9.89,  '2022-10-18 20:30:00', 2),
(null, -41.09, 10.45, '2022-10-17 20:30:00', 3);

insert into medicamento values
(null, 'vacina', 'Astrazeneca', -40.00, -10.00),
(null, 'vacina', 'Johnson', -50.00, -10.00),
(null, 'vacina', 'CoronaVac', -40.00, -10.00);

insert into lote values
(3, 100, 500, '2023-01-31', '2022-05-05', null, 30051),
(1, 100, 501, '2023-02-12', '2022-05-05', null, 35522),
(2, 100, 500, '2022-12-30', '2022-05-05', null, 30052),
(3, 100, 502, '2022-11-24', '2022-05-05', null, 32201);

select * from cliente;
select * from setor;
select * from sensor;
select * from metrica;
select * from medicamento;
select * from lote;

-- select geral das tabelas
SELECT 
    c.nome AS Empresa,
    st.andar,
    st.sala,
    sn.numeroSerie,
    mt.temperatura,
    mt.umidade,
    mt.dataHora,
    med.descricao,
    l.lote,
    l.entradaMed,
    l.validade
FROM
    cliente AS c
        JOIN
    setor AS st ON c.idCliente = st.fkCliente
        JOIN
    sensor AS sn ON st.idSetor = sn.fkSetor
		JOIN
    metrica AS mt ON sn.idSensor = mt.fkSensor
        JOIN
    lote AS l ON l.fkSetor = st.idSetor
        AND l.fkCliente = st.fkCliente
        JOIN
    medicamento AS med ON med.idMedicamento = l.fkMedicamento
    ;

-- Tela de DashBoard1

select responsavel from cliente;
select descricao from medicamento;

select temperatura from metrica 
where day(dataHora) = day(date_sub(current_timestamp(), interval 1 day)) 
and month(dataHora) = month(date_sub(current_timestamp(), interval 1 day)) 
and year(dataHora) = year(date_sub(current_timestamp(),interval 1 day)) order by temperatura asc;

select temperatura from metrica where day(dataHora) = day(date_sub(current_timestamp(), interval 1 day)) 
and month(dataHora) = month(date_sub(current_timestamp(), interval 1 day)) 
and year(dataHora) = year(date_sub(current_timestamp(),interval 1 day)) order by temperatura desc;

select COUNT(idSetor) FROM setor;

select count(idMetrica) from metrica where temperatura > -40;
select count(idMetrica) from metrica where temperatura < -40;

-- Tela de DashBoard2

select responsavel from cliente;
select idSetor from setor where idSetor = 1;

select temperatura from metrica where day(dataHora) = day(date_sub(current_timestamp(), interval 1 day)) 
and month(dataHora) = month(date_sub(current_timestamp(), interval 1 day)) 
and year(dataHora) = year(date_sub(current_timestamp(),interval 1 day));

select temperatura from metrica 
where day(dataHora) = day(date_sub(current_timestamp(), interval 1 day)) 
and month(dataHora) = month(date_sub(current_timestamp(), interval 1 day)) 
and year(dataHora) = year(date_sub(current_timestamp(),interval 1 day)) order by temperatura asc;

select temperatura from metrica where day(dataHora) = day(date_sub(current_timestamp(), interval 1 day)) 
and month(dataHora) = month(date_sub(current_timestamp(), interval 1 day)) 
and year(dataHora) = year(date_sub(current_timestamp(),interval 1 day)) order by temperatura desc;






