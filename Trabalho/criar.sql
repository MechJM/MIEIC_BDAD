PRAGMA foreign_keys=ON
BEGIN TRANSACTION;
DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS Funcionário;
DROP TABLE IF EXISTS Enfermeiro;
DROP TABLE IF EXISTS Médico;
DROP TABLE IF EXISTS Horário;
DROP TABLE IF EXISTS Equipamento;
DROP TABLE IF EXISTS Serviço;
DROP TABLE IF EXISTS Consulta;
DROP TABLE IF EXISTS Cirurgia;
DROP TABLE IF EXISTS Análise;
DROP TABLE IF EXISTS Departamento;
DROP TABLE IF EXISTS Realizam;
DROP TABLE IF EXISTS Auxilia;
DROP TABLE IF EXISTS Usado_Em;

CREATE TABLE Cliente(
    Nome VARCHAR(50), 
    NIF INTEGER primary key not null,
    Morada VARCHAR(300), 
    Telefone INTEGER,
    idCliente INTEGER unique, 
    Historial_Médico VARCHAR(500)
);
CREATE TABLE Funcionário(
    Nome VARCHAR(50), 
    NIF INTEGER primary key not null, 
    Morada VARCHAR(300), 
    Telefone INTEGER,
    idFuncionário INTEGER unique, 
    Departamento VARCHAR(20)
);
CREATE TABLE Enfermeiro(
    Nome VARCHAR(50), 
    NIF INTEGER primary key not null, 
    Morada VARCHAR(300), 
    Telefone INTEGER,
    idFuncionário INTEGER unique, 
    Departamento VARCHAR(20),
    Injeções_Administradas VARCHAR(50)
);
CREATE TABLE Médico(
    Nome VARCHAR(50), 
    NIF INTEGER primary key not null, 
    Morada VARCHAR(300), 
    Telefone INTEGER,
    idFuncionário INTEGER unique, 
    Departamento VARCHAR(20),
    Disponibilidade_Plantão BLOB
);
CREATE TABLE Horário(
    idHorário INTEGER primary key not null, 
    idFuncionário INTEGER unique, 
    Dias_folga VARCHAR(100), 
    Dias_trabalho VARCHAR(100), 
    Turnos VARCHAR(30)
);
CREATE TABLE Equipamento(
    Código INTEGER primary key not null, 
    Tipo VARCHAR(20), 
    Quantidade INTEGER
);
CREATE TABLE Serviço(
    idServiço INTEGER primary key not null, 
    Data CHAR(10), 
    Hora CHAR(5), 
    Custo FLOAT, 
    idCliente INTEGER
);
CREATE TABLE Consulta(
    idServiço INTEGER primary key not null, 
    Data CHAR(10), 
    Hora CHAR(5), 
    Custo FLOAT, 
    idCliente INTEGER, 
    Diagnóstico VARCHAR(100), 
    Sintomas VARCHAR(50), 
    Médico VARCHAR 
);
CREATE TABLE Cirurgia(
    idServiço INTEGER primary key not null, 
    Data CHAR(10), 
    Hora CHAR(5), 
    Custo FLOAT, 
    idCliente INTEGER,
    Tipo_Procedimento VARCHAR(30), 
    Órgão VARCHAR(10)
);
CREATE TABLE Análise(
    idServiço INTEGER primary key not null, 
    Data CHAR(10), 
    Hora CHAR(5), 
    Custo FLOAT, 
    idCliente INTEGER,
    Nome VARCHAR(15), 
    Resultados VARCHAR(100), 
    Data_Resultado VARCHAR(10), 
    idFuncionário INTEGER,
    Consulta INTEGER 
);
CREATE TABLE Departamento(
    Nome VARCHAR(20) primary key not null,
    Piso INTEGER
);
CREATE TABLE Realizam(
    Médico INTEGER not null, 
    Cirurgia INTEGER not null 
);
CREATE TABLE Auxilia(
    Enfermeiro INTEGER not null,
    Cirurgia INTEGER not null
);
CREATE TABLE Usado_Em(
    Código INTEGER not null,
    idServiço INTEGER not null
);
COMMIT;
