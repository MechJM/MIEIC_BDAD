PRAGMA foreign_keys=ON;
BEGIN TRANSACTION;
drop table if exists Aluno;
create table Aluno
(
    nr int primary key not null,
    Nome text
);
drop table if exists Prof;
create table Prof
(
    sigla text primary key not null,
    Nome text
);
drop table if exists Cadeira;
create table Cadeira
(
    cod sigla primary key not null,
    Design text,
    curso text,
    regente text references Prof(sigla) not null
);
drop table if exists Prova;
create table Prova
(
    nr int references Aluno(nr) not null,
    cod text references Cadeira(cod) not null,
    data text not null,
    nota int,
    primary key (nr,cod,data)
);
insert into Aluno values (100,"João");
insert into Aluno values (110,"Manuel");
insert into Aluno values (120,"Rui");
insert into Aluno values (130,"Abel");
insert into Aluno values (140,"Fernando");
insert into Aluno values (150,"Ismael");
insert into Prof values ("ECO","Eugénio");
insert into Prof values ("FNF","Fernando");
insert into Prof values ("JLS","João");
insert into Cadeira values ("TS1","Teoria dos Sistemas 1","IS","FNF");
insert into Cadeira values ("BD","Bases de Dados","IS","ECO");
insert into Cadeira values ("EIA","Estruturas de Informação e Algoritmos","IS","ECO");
insert into Cadeira values ("EP","Electrónica de Potência","AC","JLS");
insert into Cadeira values ("IE","Instalações Eléctricas","AC","JLS");
insert into Prova values (100,"TS1","92-02-11",8);
insert into Prova values (100,"TS1","93-02-02",11);
insert into Prova values (100,"BD","93-02-04",17);
insert into Prova values (100,"EIA","92-01-29",16);
insert into Prova values (100,"EIA","93-02-02",13);
insert into Prova values (110,"EP","92-01-30",12);
insert into Prova values (110,"IE","92-02-05",10);
insert into Prova values (110,"IE","93-02-01",14);
insert into Prova values (120,"TS1","93-01-31",15);
insert into Prova values (120,"EP","93-02-04",13);
insert into Prova values (130,"BD","93-02-04",12);
insert into Prova values (130,"EIA","93-02-02",7);
insert into Prova values (130,"TS1","92-02-11",8);
insert into Prova values (140,"TS1","93-01-31",10);
insert into Prova values (140,"TS1","92-02-11",13);
insert into Prova values (140,"EIA","93-02-02",11);
insert into Prova values (150,"TS1","92-02-11",10);
insert into Prova values (150,"EP","93-02-02",11);
insert into Prova values (150,"BD","93-02-04",17);
insert into Prova values (150,"EIA","92-01-29",16);
insert into Prova values (150,"IE","93-02-02",13);
COMMIT;