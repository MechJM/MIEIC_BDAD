PRAGMA foreign_keys=ON;
BEGIN TRANSACTION;
drop table if exists Marca;
create table Marca 
(
    idMarca int primary key not null,
    nome text
);
drop table if exists Modelo;
create table Modelo 
(
    idModelo int primary key not null,
    nome text
);
drop table if exists CodPostal;
create table CodPostal
(
    codPostal1 text primary key not null,
    localidade text
);
drop table if exists Cliente;
create table Cliente
(
    idCliente int primary key not null,
    nome text,
    morada text,
    codPostal1 text references CodPostal(CodPostal1),
    codPostal2 text,
    telefone int
);
drop table if exists Carro;
create table Carro
(
    idCarro int primary key not null,
    matricula text unique,
    idModelo int references Modelo(idModelo),
    idCliente int references Cliente(idCliente)
);
drop table if exists Reparacao;
create table Reparacao
(
    idReparacao int primary key not null,
    dataInicio text,
    dataFim text,
    idCliente int references Cliente(idCliente),
    idCarro int references Carro(idCarro)
    constraint acabarDepoisDeComecar check (dataFim > dataInicio)
);
drop table if exists Peca;
create table Peca
(
    idPeca int primary key not null,
    codigo text unique,
    designacao text,
    custoUnitario real check (custoUnitario >= 0),
    quantidade int check (quantidade >= 0)
);
drop table if exists ReparacaoPeca;
create table ReparacaoPeca
(
    idReparacao int references Reparacao(idReparacao) not null,
    idPeca int references Peca(idPeca) not null,
    quantidade int check (quantidade >= 0),
    primary key (idReparacao,idPeca)
);
drop table if exists PecaModelo;
create table PecaModelo
(
    idPeca int references Peca(idPeca) not null,
    idModelo int references Modelo(idModelo) not null,
    primary key (idPeca,idModelo)
);
drop table if exists Especialidade;
create table Especialidade
(
    idEspecialidade int primary key not null,
    nome text,
    custoHorario real check (custoHorario >= 0)
);
drop table if exists Funcionario;
create table Funcionario
(
    idFuncionario int primary key not null,
    nome text,
    morada text,
    codPostal1 text references CodPostal(codPostal1) not null,
    codPostal2 text,
    telefone int,
    idEspecialidade int references Especialidade(idEspecialidade) not null
);
drop table if exists FuncionarioReparacao;
create table FuncionarioReparacao
(
    idFuncionario int references Funcionario(idFuncionario),
    idReparacao int references Reparacao(idReparacao),
    numHoras int check (numHoras >= 0),
    primary key (idFuncionario,idReparacao)
);
COMMIT;