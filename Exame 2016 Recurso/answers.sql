select Estudante.nome as nome from Estudante, Curso where Estudante.curso = Curso.id and Estudante.nome like '%a%' and Curso.nome = "MIEIC";
select '' as '';
select Estudante.nome as nome from Estudante, Amizade where Estudante.id = Amizade.ID1 and Amizade.ID2 = (select id from Estudante where nome like 'Gabriel%');
select '' as '';
select Estudante.nome as Nome from Estudante where Estudante.id in (select ID1 from Amizade where ID2 in (select id from Estudante where anoCurricular = 1)) and Estudante.id in (select ID1 from Amizade where ID2 in (select id from Estudante where anoCurricular = 2)) and Estudante.id in (select ID1 from Amizade where ID2 in (select id from Estudante where anoCurricular = 3)) and Estudante.id in (select ID1 from Amizade where ID2 in (select id from Estudante where anoCurricular = 4)) and Estudante.id in (select ID1 from Amizade where ID2 in (select id from Estudante where anoCurricular = 5));

create table AmizadeTransitiva (ID1 int REFERENCES Estudante(id), ID2 int REFERENCES Estudante(id), PRIMARY KEY(ID1,ID2));
