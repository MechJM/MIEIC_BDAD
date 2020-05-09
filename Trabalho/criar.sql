PRAGMA foreign_keys
=ON;
BEGIN TRANSACTION;

DROP TABLE IF EXISTS Auxilia;
DROP TABLE IF EXISTS Realizam;
DROP TABLE IF EXISTS Analise;
DROP TABLE IF EXISTS Funcionario;
DROP TABLE IF EXISTS Medico;
DROP TABLE IF EXISTS Usado_Em;
DROP TABLE IF EXISTS Servico;
DROP TABLE IF EXISTS Equipamento;
DROP TABLE IF EXISTS Enfermeiro;
DROP TABLE IF EXISTS Consulta;
DROP TABLE IF EXISTS Cirurgia;
DROP TABLE IF EXISTS Departamento;
DROP TABLE IF EXISTS Horario;
DROP TABLE IF EXISTS Cliente;

CREATE TABLE Cliente
(
    Nome VARCHAR(50),
    NIF INTEGER primary key not null check (NIF > 0),
    Morada VARCHAR(300),
    Telefone INTEGER check (Telefone > 0),
    idCliente INTEGER unique not null check (idCliente > 0),
    Historial_Medico VARCHAR(500)
);
CREATE TABLE Funcionario
(
    Nome VARCHAR(50),
    NIF INTEGER primary key not null check (NIF > 0),
    Morada VARCHAR(300),
    Telefone INTEGER check (Telefone > 0),
    idFuncionario INTEGER unique not null check (idFuncionario > 0),
    Departamento VARCHAR(20) references Departamento(nome) on update cascade on delete cascade not null
);
CREATE TABLE Enfermeiro
(
    Nome VARCHAR(50),
    NIF INTEGER primary key not null check (NIF > 0),
    Morada VARCHAR(300),
    Telefone INTEGER check (Telefone > 0),
    idFuncionario INTEGER unique not null check (idFuncionario > 0),
    Departamento VARCHAR(20) references Departamento(nome) on update cascade on delete cascade not null,
    Injecoes_Administradas INTEGER check (Injecoes_Administradas >= 0)
);
CREATE TABLE Medico
(
    Nome VARCHAR(50),
    NIF INTEGER primary key not null check (NIF > 0),
    Morada VARCHAR(300),
    Telefone INTEGER check (Telefone > 0),
    idFuncionario INTEGER unique not null check (idFuncionario > 0),
    Departamento VARCHAR(20) references Departamento(nome) on update cascade on delete cascade not null,
    Especialidade VARCHAR(20) check (Especialidade = Departamento),
    Disponibilidade_Plantao INTEGER check (Disponibilidade_Plantao = 1 or Disponibilidade_Plantao = 0)
);
CREATE TABLE Horario
(
    idHorario INTEGER primary key not null check (idHorario > 0),
    idFuncionario INTEGER references Funcionario(idFuncionario) on update cascade on delete cascade not null,
    Dias_folga VARCHAR(100),
    Dias_trabalho VARCHAR(100),
    Turnos VARCHAR(30)
);
CREATE TABLE Equipamento
(
    Codigo INTEGER primary key not null check (Codigo > 0),
    Tipo VARCHAR(20),
    Quantidade INTEGER check (Quantidade >= 1)
);
CREATE TABLE Servico
(
    idServico INTEGER primary key not null check (idServico > 0),
    Data CHAR(10),
    Hora CHAR(5),
    Custo FLOAT check (Custo > 0),
    idCliente INTEGER references Cliente(idCliente) on update cascade on delete cascade not null check (idCliente > 0),
    unique (Data,Hora,idCliente)
);
CREATE TABLE Consulta
(
    idServico INTEGER primary key not null check (idServico > 0),
    Data CHAR(10),
    Hora CHAR(5),
    Custo FLOAT check (Custo > 0),
    idCliente INTEGER references Cliente(idCliente) on update cascade on delete cascade not null check (idCliente > 0),
    Diagnostico VARCHAR(100),
    Sintomas VARCHAR(50),
    Medico VARCHAR references Medico(idFuncionario) on update cascade on delete cascade not null,
    unique (Data,Hora,idCliente),
    unique (Data,Hora,Medico)
);
CREATE TABLE Cirurgia
(
    idServico INTEGER primary key not null check (idServico > 0),
    Data CHAR(10),
    Hora CHAR(5),
    Custo FLOAT check (Custo > 0),
    idCliente INTEGER references Cliente(idCliente) on update cascade on delete cascade not null check (idCliente > 0),
    Tipo_Procedimento VARCHAR(30),
    Orgao VARCHAR(10),
    unique (Data,Hora,idCliente)
);
CREATE TABLE Analise
(
    idServico INTEGER primary key not null check (idServico > 0),
    Data CHAR(10),
    Hora CHAR(5),
    Custo FLOAT check (Custo > 0),
    idCliente INTEGER references Cliente(idCliente) on update cascade on delete cascade not null check (idCliente > 0),
    Nome VARCHAR(15),
    Resultados VARCHAR(100),
    Data_Resultado VARCHAR(10),
    idFuncionario INTEGER references Funcionario(idFuncionario) on update cascade on delete cascade not null check (idFuncionario > 0),
    Consulta INTEGER references Consulta(idServico) on update cascade on delete cascade not null check (Consulta > 0),
    unique (Data,Hora,idCliente),
    unique (Data,Hora,idFuncionario)
);
CREATE TABLE Departamento
(
    Nome VARCHAR(20) primary key not null,
    Piso INTEGER check (Piso >= -2 and Piso <= 5)
);
CREATE TABLE Realizam
(
    Medico INTEGER references Medico(idFuncionario) on update cascade on delete cascade not null check (Medico > 0),
    Cirurgia INTEGER references Cirurgia(idServico) on update cascade on delete cascade not null check (Cirurgia > 0),
    primary key (Medico,Cirurgia)
);
CREATE TABLE Auxilia
(
    Enfermeiro INTEGER references Enfermeiro(idFuncionario) on update cascade on delete cascade not null check (Enfermeiro > 0),
    Cirurgia INTEGER references Cirurgia(idServico) on update cascade on delete cascade not null check (Cirurgia > 0),
    primary key (Enfermeiro,Cirurgia)
);
CREATE TABLE Usado_Em
(
    Codigo INTEGER references Equipamento(Codigo) on update cascade on delete cascade not null check (Codigo > 0),
    idServico INTEGER references Servico(idServico) on update cascade on delete cascade not null check (idServico > 0),
    primary key (Codigo,idServico)
);
COMMIT;